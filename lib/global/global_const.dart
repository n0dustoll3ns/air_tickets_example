import 'package:flutter/material.dart';

const List<String> cellTitles = [
  'AirLine:',
  'From:',
  'To:',
  'Time:',
  'Price:',
];
const List<String> gAirLines = ['Alidaunia', 'Alitalia', 'Air One', 'Air vallee'];
const List<String> gFrom = [
  'Rome',
  'Venezia',
  'Turin',
];
const List<String> gTo = [
  'Milano',
  'Naples',
  'Palermo',
];

const List<String> passengersNumber = [
  '1 adult',
  '2 adults',
  '2 adults, \r1 child',
];

const List<String> wayEnd = [
  '1 way trip',
  'Round trip',
];

const List<String> ticketClass = [
  'Business class',
  '1st class',
  'Economy class',
];

const EdgeInsets cellPadding = EdgeInsets.symmetric(vertical: 22);
const EdgeInsets pagePadding = EdgeInsets.symmetric(horizontal: 22);
const TextStyle cellTextStyle = TextStyle(color: Colors.white, fontSize: 16);

const inputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  focusColor: Color(0xFF6C63FF),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 73, 63, 255)),
  ),
);
