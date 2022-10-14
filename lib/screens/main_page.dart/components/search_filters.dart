import 'package:flutter/material.dart';

import '../../../global/global_const.dart';

class SearchFilters extends StatefulWidget {
  const SearchFilters({super.key});

  @override
  State<SearchFilters> createState() => _SearchFiltersState();
}

class _SearchFiltersState extends State<SearchFilters> {
  String wayEndValue = wayEnd.first;
  String passengersValue = passengersNumber.first;
  String ticketClassValue = ticketClass.last;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: pagePadding,
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButton<String>(
              dropdownColor: Theme.of(context).backgroundColor,
              value: wayEndValue,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              underline: Container(height: 0, color: Colors.transparent),
              onChanged: (String? value) {
                setState(() {
                  wayEndValue = value!;
                });
              },
              items: wayEnd.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              width: 26,
            ),
            DropdownButton<String>(
              dropdownColor: Theme.of(context).backgroundColor,
              value: passengersValue,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              underline: Container(height: 0, color: Colors.transparent),
              onChanged: (String? value) {
                setState(() {
                  passengersValue = value!;
                });
              },
              items: passengersNumber.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(
              width: 26,
            ),
            DropdownButton<String>(
              dropdownColor: Theme.of(context).backgroundColor,
              value: ticketClassValue,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: Colors.black),
              underline: Container(height: 0, color: Colors.transparent),
              onChanged: (String? value) {
                setState(() {
                  ticketClassValue = value!;
                });
              },
              items: ticketClass.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
