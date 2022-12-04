from iata_converter import IATAConverter


def data_to_offer(data, converter: IATAConverter):
    return {
        'hotelid': (int)(data[0]),
        'departuredate': data[1],
        'returndate': data[2],
        'countadults': (int)(data[3]),
        'countchildren': (int)(data[4]),
        'price': (int)(data[5]),
        'inbounddepartureairport': converter.get_airport_by_IATA(data[6]),
        'inboundarrivalairport': converter.get_airport_by_IATA(data[7]),
        'inboundairline': converter.get_airline_by_IATA(data[8]),
        'inboundarrivaldatetime': data[9],
        'outbounddepartureairport': converter.get_airport_by_IATA(data[10]),
        'outboundarrivalairport': converter.get_airport_by_IATA(data[11]),
        'outboundairline': converter.get_airline_by_IATA(data[12]),
        'outboundarrivaldatetime': data[13],
        'mealtype': data[14],
        'oceanview': (bool)(data[15]),
        'roomtype': data[16]
    }


def data_to_hotel(data):
    return {
        'hotelid': (int)(data[0]),
        'hotelname': data[1],
        'latitude': (float)(data[2]),
        'longitude': (float)(data[3]),
        'hotelstars': (float)(data[4])
    }
