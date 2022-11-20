import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';
import 'package:holiday_aggregator_24/domain/models/offer.model.dart';

const breakPoint = 800;

class SearchResults extends StatelessWidget {
  final List<Offer> offers;
  final List<Hotel> hotels;
  final void Function(Hotel) onHotelSelect;

  const SearchResults({
    Key? key,
    required this.offers,
    required this.hotels,
    required this.onHotelSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: offers.length,
        itemBuilder: (_, index) {
          final hotel = hotels[index];
          final offer = offers[index];
          return Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.center,
                  direction: MediaQuery.of(context).size.width < breakPoint
                      ? Axis.vertical
                      : Axis.horizontal,
                  children: [
                    const Icon(
                      Icons.hotel,
                      size: 80,
                    ),
                    const SizedBox(width: 10),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 4,
                      children: [
                        Text(hotel.name),
                        Text("${hotel.hotelStars} stars"),
                        Text("${offer.price} €"),
                        const SizedBox(height: 4),
                        MaterialButton(
                          color: Colors.blue,
                          child: const Text(
                            "to the offers",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () => onHotelSelect(hotel),
                        )
                      ],
                    ),
                    const SizedBox(width: 16, height: 16),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 4,
                      children: [
                        Text(
                            "${offer.returnDate.difference(offer.departureDate).inDays} days"),
                        Text("${offer.countAdults} adults"),
                        Text("${offer.countChildren} children"),
                        Text(offer.mealType),
                        Text(offer.roomType),
                      ],
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
