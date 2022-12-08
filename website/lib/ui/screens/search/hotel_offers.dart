import 'package:flutter/material.dart';
import 'package:holiday_aggregator_24/domain/models/hotel.model.dart';
import 'package:holiday_aggregator_24/domain/models/offer.model.dart';
import 'package:holiday_aggregator_24/ui/screens/search/search.screen.dart';
import 'package:holiday_aggregator_24/util/date_format.dart';

class HotelView extends StatelessWidget {
  final Hotel hotel;
  final List<Offer> offers;

  const HotelView({
    Key? key,
    required this.hotel,
    required this.offers,
  }) : super(key: key);

  Widget _flightIcon() => const RotatedBox(
        quarterTurns: 1,
        child: Icon(
          Icons.flight,
          size: 20,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: offers.length,
        itemBuilder: (_, index) {
          final offer = offers[index];
          return Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Wrap(
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.center,
                direction: MediaQuery.of(context).size.width < breakPoint
                    ? Axis.vertical
                    : Axis.horizontal,
                children: [
                  SizedBox(
                    width: 200,
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 8,
                      children: [
                        Row(
                          children: [
                            _flightIcon(),
                            const SizedBox(width: 4),
                            Text(
                              offer.departureDate.yearMonthDay,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 10,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(offer.departureDate.time),
                                Text(offer.outboundArrivalTime.time)
                              ],
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 4,
                              children: [
                                Text(offer.outboundDepartureAirport),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    "${offer.outboundArrivalTime.difference(offer.departureDate).hoursMinutes} h | ${offer.outboundAirline}",
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Text(offer.outboundArrivalAirport)
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            _flightIcon(),
                            const SizedBox(width: 4),
                            Text(
                              offer.returnDate.yearMonthDay,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 10,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(offer.returnDate.time),
                                Text(offer.inboundArrivalTime.time)
                              ],
                            ),
                            Wrap(
                              direction: Axis.vertical,
                              spacing: 4,
                              children: [
                                Text(offer.inboundDepartureAirport),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    "${offer.inboundArrivalTime.difference(offer.returnDate).hoursMinutes} h | ${offer.inboundAirline}",
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ),
                                Text(offer.inboundArrivalAirport)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 32, width: 32),
                  SizedBox(
                    width: 200,
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 4,
                      children: [
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const Icon(Icons.bed),
                            const SizedBox(width: 4),
                            Text(offer.roomType),
                          ],
                        ),
                        Row(children: [
                          const Icon(Icons.set_meal),
                          const SizedBox(width: 4),
                          Text(offer.mealType)
                        ]),
                        Row(
                          children: [
                            const Icon(Icons.water),
                            const SizedBox(width: 4),
                            Text(
                              "${offer.isOceanView ? "with" : "without"} ocean view",
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
