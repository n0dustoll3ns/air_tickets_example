import 'package:flutter/cupertino.dart';
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

const EdgeInsets cellPadding = EdgeInsets.symmetric(vertical: 22);
const TextStyle cellTextStyle = TextStyle(color: Colors.white, fontSize: 16);

const inputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  focusColor: Color(0xFF6C63FF),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Color.fromARGB(255, 73, 63, 255)),
  ),
);
