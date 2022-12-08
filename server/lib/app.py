import json
from flask import Flask, request, jsonify
from flask_cors import CORS
import sqlite3
from iata_converter import IATAConverter

from utils import data_to_hotel, data_to_offer

app = Flask(__name__)
CORS(app)

RESULTS_SIZE = 10

iata_converter = IATAConverter()


def get_db_connection():
    connection = sqlite3.connect('../db.sqlite3')
    return connection


@app.route('/')
def hello_world():
    return '<p>Hello, World!</p>'


@app.route('/query', methods=['GET', 'POST'])
def query():
    data = request.get_json()
    earliest_start = data['earliest_start']
    latest_end = data['latest_end']
    starting_airport = iata_converter.get_airport_by_IATA(
        data['starting_airport'])
    destination_airport = iata_converter.get_airport_by_IATA(
        data['destination_airport'])
    count_adults = data['count_adults']
    count_children = data['count_children']
    duration = data['duration']

    connection = get_db_connection()
    cursor = connection.cursor()

    cursor.execute("""SELECT * 
            FROM offers 
            WHERE departuredate >= :earliest_start
            AND returndate <= :latest_end
            AND inboundarrivalairport = :starting_airport
            AND outbounddepartureairport = :starting_airport
            AND inbounddepartureairport = :destination_airport
            AND outboundarrivalairport = :destination_airport
            AND countadults = :count_adults
            AND countchildren = :count_children
            AND CAST(JULIANDAY(returndate) - JULIANDAY(departuredate) AS INT) = :duration
            """, {'earliest_start': earliest_start, 'latest_end': latest_end, 'starting_airport': starting_airport,
                  'destination_airport': destination_airport, 'count_adults': count_adults, 'count_children':
                  count_children, 'duration': duration})
    data = cursor.fetchmany(RESULTS_SIZE)
    offers = [data_to_offer(data=d, converter=iata_converter) for d in data]
    print(offers)
    return jsonify(offers)


@app.get('/departure_airports')
def departure_airports():
    connection = get_db_connection()
    connection.row_factory = lambda cursor, row: row[0]
    cursor = connection.cursor()

    cursor.execute("SELECT DISTINCT outbounddepartureairport FROM offers")
    iata_codes = cursor.fetchall()

    print(iata_codes)

    # convert IATA codes to airport names
    destinations = [
        iata_converter.get_airport_by_IATA(iata_code) for iata_code in iata_codes
    ]

    return jsonify(destinations)


@app.get('/destinations')
def destinations():
    connection = get_db_connection()
    connection.row_factory = lambda cursor, row: row[0]
    cursor = connection.cursor()

    cursor.execute("SELECT DISTINCT outboundarrivalairport FROM offers")
    iata_codes = cursor.fetchall()

    # convert IATA codes to airport names
    destinations = [
        iata_converter.get_airport_by_IATA(iata_code) for iata_code in iata_codes
    ]

    return jsonify(destinations)


@app.get('/hotel/<id>')
def hotel(id):
    connection = get_db_connection()
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM hotels WHERE id = :id", {'id': id})
    data = cursor.fetchone()
    hotel = data_to_hotel(data)
    return jsonify(hotel)


@app.route('/hotel_offers', methods=['GET', 'POST'])
def hotel_offers():
    data = request.get_json()
    earliest_start = data['earliest_start']
    latest_end = data['latest_end']
    starting_airport = iata_converter.get_airport_by_IATA(
        data['starting_airport'])
    destination_airport = iata_converter.get_airport_by_IATA(
        data['destination_airport'])
    count_adults = data['count_adults']
    count_children = data['count_children']
    duration = data['duration']
    hotel_id = data['hotel_id']

    connection = get_db_connection()
    cursor = connection.cursor()

    cursor.execute("""SELECT * 
        FROM offers 
        WHERE departuredate >= :earliest_start
        AND returndate <= :latest_end
        AND inboundarrivalairport = :starting_airport
        AND outbounddepartureairport = :starting_airport
        AND inbounddepartureairport = :destination_airport
        AND outboundarrivalairport = :destination_airport
        AND countadults = :count_adults
        AND countchildren = :count_children
        AND CAST(JULIANDAY(returndate) - JULIANDAY(departuredate) AS INT) = :duration
        AND hotelid = :hotel_id
        """, {'earliest_start': earliest_start, 'latest_end': latest_end, 'starting_airport': starting_airport,
              'destination_airport': destination_airport, 'count_adults': count_adults, 'count_children':
              count_children, 'duration': duration, 'hotel_id': hotel_id})

    data = cursor.fetchmany(RESULTS_SIZE)
    offers = [data_to_offer(data=d, converter=iata_converter) for d in data]
    print(offers)
    return jsonify(offers)
