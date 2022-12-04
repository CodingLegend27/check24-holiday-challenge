import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';

void main() {
  test(('test parsing for the hotel model'), () {
    // arrange
    final json = {
      "hotelid": 164,
      "hotelname": "Barcelo Illetas Albatros - Erwachsenenhotel",
      "hotelstars": 4.0,
      "latitude": 39.54565944,
      "longitude": 2.589135459
    };

    // act
    final hotel = Hotel.fromJson(json);

    // assert
    expect(hotel.id, 164);
    expect(hotel.name, "Barcelo Illetas Albatros - Erwachsenenhotel");
    expect(hotel.hotelStars, 4.0);
    expect(hotel.latitude, 39.54565944);
    expect(hotel.longitude, 2.589135459);
  });
}
