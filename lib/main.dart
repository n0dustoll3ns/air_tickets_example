import 'package:flutter/material.dart';

import 'tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color(0xFFCDC1FF),
        secondaryHeaderColor: const Color(0xFF6C63FF),
        primaryColor: const Color(0xFFFED66b),
      ),
      home: const Tickets(),
    );
  }
}
