import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';
import 'package:holiday_aggregator_24/domain/models/offer.model.dart';
import 'package:holiday_aggregator_24/ui/screens/search/search.screen.dart';

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
    return offers.isEmpty
        ? const Text("no offers found ...")
        : SizedBox(
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
                        direction:
                            MediaQuery.of(context).size.width < breakPoint
                                ? Axis.vertical
                                : Axis.horizontal,
                        children: [
                          const Icon(
                            Icons.hotel,
                            size: 80,
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            width: 200,
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 4,
                              children: [
                                SizedBox(
                                    width: 200,
                                    child: Text(
                                      hotel.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )),
                                Text("${hotel.stars} stars"),
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
                          ),
                          const SizedBox(width: 16, height: 16),
                          SizedBox(
                            width: 200,
                            child: Wrap(
                              direction: Axis.vertical,
                              spacing: 4,
                              children: [
                                Text(
                                    "${offer.returnDate.difference(offer.departureDate).inDays} days"),
                                Text("${offer.countAdults} adults"),
                                Text("${offer.countChildren} children"),
                                Text("included meal: ${offer.mealType}"),
                                Text("room type: ${offer.roomType}"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ));
              },
            ),
          );
  }
}
