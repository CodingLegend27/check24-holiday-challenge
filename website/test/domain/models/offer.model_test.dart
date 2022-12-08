import 'package:flutter_test/flutter_test.dart';
import 'package:holiday_aggregator_24/domain/models/offer.model.dart';

void main() {
  test('test map parsing of the offer model', () {
    // arrange
    final json = {
      "countadults": 2,
      "countchildren": 3,
      "departuredate": "2022-10-24T17:40:00+02:00",
      "hotelid": 355,
      "inboundairline": "LH",
      "inboundarrivalairport": "MUC",
      "inboundarrivaldatetime": "2022-10-29T23:05:00+02:00",
      "inbounddepartureairport": "PMI",
      "mealtype": "allinclusive",
      "oceanview": true,
      "outboundairline": "EW",
      "outboundarrivalairport": "PMI",
      "outboundarrivaldatetime": "2022-10-24T19:55:00+02:00",
      "outbounddepartureairport": "MUC",
      "price": 2926,
      "returndate": "2022-10-24T19:55:00+02:00",
      "roomtype": "family"
    };

    // act
    final offer = Offer.fromJson(json);

    // assert
    expect(offer.countAdults, 2);
    expect(offer.countChildren, 3);
    expect(offer.departureDate.toIso8601String(), "2022-10-24T15:40:00.000Z");
    expect(offer.hotelId, 355);
    expect(offer.inboundAirline, "LH");
    expect(offer.inboundArrivalAirport, "MUC");
    expect(
        offer.inboundArrivalTime.toIso8601String(), "2022-10-29T21:05:00.000Z");
    expect(offer.inboundDepartureAirport, "PMI");
    expect(offer.mealType, "allinclusive");
    expect(offer.isOceanView, true);
    expect(offer.outboundAirline, "EW");
    expect(offer.outboundArrivalAirport, "PMI");
    expect(offer.outboundArrivalTime.toIso8601String(),
        "2022-10-24T17:55:00.000Z");
    expect(offer.outboundDepartureAirport, "MUC");
    expect(offer.price, 2926);
    expect(offer.returnDate.toIso8601String(), "2022-10-24T17:55:00.000Z");
    expect(offer.roomType, "family");
  });
}
