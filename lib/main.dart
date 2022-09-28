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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 18)
        ),
        dataTableTheme: const DataTableThemeData(dataTextStyle: TextStyle(color: Colors.white)),
        fontFamily: 'Arial',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: Colors.black),
        ),
        backgroundColor: const Color(0xFFCDC1FF),
        secondaryHeaderColor: const Color(0xFF6C63FF),
        primaryColor: const Color(0xFFFED66b),
      ),
      home: const Tickets(),
    );
  }
}
