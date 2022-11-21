from datetime import datetime

def data_to_offer(data):
    return {'hotelid': (int) (data[0]), 'departuredate': data[1], 'returndate': data[2], 'countadults': (int) (data[3]), 'countchildren': (int) (data[4]), 'price': (int) (data[5]), 'inbounddepartureairport': data[6], 'inboundarrivalairport': data[7], 'inboundairline': data[8], 'inboundarrivaldatetime': data[9], 'outbounddepartureairport': data[10], 'outboundarrivalairport': data[11], 'outboundairline': data[12], 'outboundarrivaldatetime': data[13], 'mealtype': data[14], 'oceanview': (bool) (data[15]), 'roomtype': data[16]}

def data_to_hotel(data):
    return {'hotelid': (int) (data[0]), 'hotelname': data[1], 'latitude': (float) (data[2]), 'longitude': (float) (data[3]), 'hotelstars': (float) (data[4])}

