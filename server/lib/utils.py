def data_to_offer(data):
    return {'hotelid': data[0], 'departuredate': data[1], 'returndate': data[2], 'countadults': data[3], 'countchildren': data[4], 'price': data[5], 'inbounddepartureairport': data[6], 'inboundarrivalairport': data[7], 'inboundairline': data[8], 'inboundarrivaldatetime': data[9], 'outbounddepartureairport': data[10], 'outboundarrivalairport': data[11], 'outboundairline': data[12], 'outboundarrivaldatetime': data[13], 'mealtype': data[14], 'oceanview': data[15], 'roomtype': data[16]}

def data_to_hotel(data):
    return {'hotelid': data[0], 'hotelname': data[1], 'latitude': data[2], 'longitude': data[3], 'hotelstars': data[4]}

