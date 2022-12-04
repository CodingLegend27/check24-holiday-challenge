import requests
import config

BASE_URL = "https://aviation-reference-data.p.rapidapi.com"
AIRLINE_PATH = "/airline/"
AIRPORT_PATH = "/airports/"


HEADERS = {
    "X-RapidAPI-Key": config.airlines_api_key,
    "X-RapidAPI-Host": "aviation-reference-data.p.rapidapi.com"
}


class IATAConverter:
    def __init__(self):
        self.airline_iata = {}
        self.airport_iata = {}

    def get_airline_by_IATA(self, iata_code):
        # check if we have the airline in cache
        if (iata_code in self.airline_iata):
            return self.airline_iata[iata_code]

        # if not, we need to query the API
        response = requests.request(
            "GET", BASE_URL + AIRLINE_PATH + iata_code, headers=HEADERS)
        response = response.json()
        name = response['name'].upper()

        # cache the result for later use
        self.airline_iata[name] = iata_code
        self.airline_iata[iata_code] = name

        return name

    def get_IATA_by_airline(self, airline):
        # airlines are given in uppercase by the API
        airline = airline.upper()

        # check if we have the airline in cache
        if (airline in self.airline_iata):
            return self.airline_iata[airline]

        # if not, we need to query the API
        response = requests.request(
            "GET", BASE_URL + AIRLINE_PATH + "search", headers=HEADERS, params={"name": airline})
        response = response.json()

        iata = response[0]['iataCode']

        # cache the result for later use
        self.airline_iata[airline] = iata
        self.airline_iata[iata] = airline

        return iata

    def get_airport_by_IATA(self, iata_code):
        # check if we have the airport in cache
        if (iata_code in self.airport_iata):
            return self.airport_iata[iata_code]

        # if not, we need to query the API
        response = requests.request(
            "GET", BASE_URL + AIRPORT_PATH + iata_code, headers=HEADERS)
        response = response.json()

        name = response['name'].upper()

        # cache the result for later use
        self.airport_iata[name] = iata_code
        self.airport_iata[iata_code] = name

        return name

    def get_IATA_by_airport(self, airport):
        # airports are given in uppercase by the API
        airport = airport.upper()

        # airport has to be in cache
        # since we already got it from the API previously
        if (airport in self.airport_iata):
            return self.airport_iata[airport]

        # if not, we need to query the API
        # but the used API does not support searching by name

        return ""


if __name__ == "__main__":
    c = IATAConverter()

    # test airline
    name = c.get_airline_by_IATA("LH")
    iata = c.get_IATA_by_airline("Lufthansa")
    print(name)
    print(iata)

    # test airport
    name = c.get_airport_by_IATA("MUC")
    iata = c.get_IATA_by_airport("Munich International")
    print(name)
    print(iata)
