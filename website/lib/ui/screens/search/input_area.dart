import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holiday_aggregator_24/domain/repositories/search.repository.dart';
import 'package:holiday_aggregator_24/util/date_format.dart';

const inputFieldHeight = 50.0;
const inputFieldWidth = 200.0;

class InputArea extends StatefulWidget {
  final List<String> departureAirports;
  final List<String> destinations;
  final void Function(SearchParameters) onSubmit;

  const InputArea({
    required this.departureAirports,
    required this.destinations,
    required this.onSubmit,
    Key? key,
  }) : super(key: key);

  @override
  State<InputArea> createState() => _InputAreaState();
}

class _InputAreaState extends State<InputArea> {
  bool isInputMissing = false;
  bool isEndDateBeforeStartDate = false;

  // user will choose those
  DateTime? earliestStart = DateTime.now().add(const Duration(days: 1));
  DateTime? latestEnd = DateTime.now().add(const Duration(days: 5));
  String? departureAirport;
  String? destination;
  int? duration;
  int? countAdults;
  int? countChildren;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 6,
          children: [
            MaterialButton(
                height: inputFieldHeight,
                minWidth: inputFieldWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    const Text(
                      "select departure date",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      earliestStart?.yearMonthDay ?? "",
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: earliestStart ??
                        DateTime.now().add(const Duration(days: 1)),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                  );
                  setState(() {
                    earliestStart = date;
                  });
                }),
            MaterialButton(
              height: inputFieldHeight,
              minWidth: inputFieldWidth,
              color: Colors.white,
              child: Column(
                children: [
                  const Text(
                    "select latest return date",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    latestEnd?.yearMonthDay ?? "",
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
              onPressed: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate:
                      latestEnd ?? DateTime.now().add(const Duration(days: 5)),
                  firstDate: DateTime.now().add(const Duration(days: 1)),
                  lastDate: DateTime.now().add(const Duration(days: 365)),
                );
                setState(() {
                  latestEnd = date;
                });
              },
            ),
            _DropdownButtonString(
              items: widget.departureAirports,
              onChanged: (String? s) => departureAirport = s,
              hint: "Departure Airport",
              icon: const Icon(Icons.flight_takeoff),
            ),
            _DropdownButtonString(
              items: widget.destinations,
              onChanged: (String? s) => destination = s,
              hint: "Destination Airport",
              icon: const Icon(Icons.flight_land),
            ),
            _InputFieldNumber(
              onChanged: (n) => duration = n,
              hint: "enter number of days",
            ),
            _InputFieldNumber(
              onChanged: (n) => countAdults = n,
              hint: "enter number of adults",
            ),
            _InputFieldNumber(
              onChanged: (n) => countChildren = n,
              hint: "enter number of children",
            ),
            const SizedBox(height: 10),
            MaterialButton(
              color: Colors.blue,
              minWidth: inputFieldWidth,
              onPressed: () {
                if (earliestStart != null &&
                    latestEnd != null &&
                    countAdults != null &&
                    countChildren != null &&
                    departureAirport != null &&
                    destination != null &&
                    duration != null) {
                  if (latestEnd!.isBefore(earliestStart!)) {
                    setState(() {
                      isEndDateBeforeStartDate = true;
                    });
                  }
                  widget.onSubmit(
                    SearchParameters(
                      duration: duration!,
                      startDate: earliestStart!,
                      endDate: latestEnd!,
                      startingAirport: departureAirport!,
                      destinationAirport: destination!,
                      countAdults: countAdults!,
                      countChildren: countChildren!,
                    ),
                  );
                } else {
                  setState(() {
                    isInputMissing = true;
                  });
                }
              },
              child: const Text(
                "search holiday",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            if (isInputMissing) ...[
              Container(
                width: inputFieldWidth,
                alignment: Alignment.center,
                child: const Text(
                  "Please enter all fields!",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              )
            ],
            if (isEndDateBeforeStartDate) ...[
              Container(
                width: inputFieldWidth,
                alignment: Alignment.center,
                child: const Text(
                  "return date cannot be before departure date!",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ]
          ],
        ),
      ),
    );
  }
}

class _DropdownButtonString extends StatefulWidget {
  final List<String> items;
  final void Function(String?)? onChanged;
  final String hint;
  final Icon? icon;

  const _DropdownButtonString({
    required this.items,
    this.icon,
    Key? key,
    this.onChanged,
    required this.hint,
  }) : super(key: key);

  @override
  State<_DropdownButtonString> createState() => _DropdownButtonStringState();
}

class _DropdownButtonStringState extends State<_DropdownButtonString> {
  String? curValue;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: inputFieldHeight,
        width: inputFieldWidth,
        child: DropdownButtonFormField(
          isExpanded: true,
          icon: widget.icon,
          value: curValue,
          alignment: Alignment.center,
          decoration: InputDecoration(
            labelText: widget.hint,
          ),
          items: widget.items
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e,
                  child: SizedBox(
                    child: Text(e),
                  ),
                ),
              )
              .toList(),
          onChanged: (String? s) {
            if (widget.onChanged != null) {
              widget.onChanged!(s);
            }
            setState(() {
              curValue = s;
            });
          },
        ),
      ),
    );
  }
}

class _InputFieldNumber extends StatelessWidget {
  final void Function(int?) onChanged;
  final String hint;

  const _InputFieldNumber(
      {Key? key, required this.onChanged, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: inputFieldWidth,
      height: inputFieldHeight,
      child: Material(
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelText: hint,
            fillColor: Colors.transparent,
          ),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (String s) => onChanged(int.tryParse(s)),
        ),
      ),
    );
  }
}
