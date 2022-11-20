import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';
import 'package:holiday_aggregator_24/domain/models/offer.model.dart';

class HotelView extends StatelessWidget {
  final Hotel hotel;
  final List<Offer> offers;

  const HotelView({Key? key, required this.hotel, required this.offers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("hotel view");
  }
}
