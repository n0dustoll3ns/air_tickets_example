import 'dart:math';

import 'package:flutter/material.dart';

import '../global/global_const.dart';

class Ticket {
  final String airline;
  final String from;
  final String to;
  final TimeOfDay time = const TimeOfDay(hour: 15, minute: 22);
  final double price;

  Ticket()
      : airline = gAirLines[Random().nextInt(3)],
        from = gFrom[Random().nextInt(3)],
        to = gTo[Random().nextInt(3)],
        price = (55 + Random().nextInt(71)).toDouble();
}
