import 'package:air_tickets/screens/main_page.dart/screen.dart';
import 'package:flutter/material.dart';

import 'screens/search_result/screen.dart';

void main() {
  runApp(const AirTicketsExample());
}

class AirTicketsExample extends StatelessWidget {
  const AirTicketsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
            displayMedium: TextStyle(fontSize: 48, color: Color(0xFF1e2019)),
            headlineSmall: TextStyle(fontSize: 16)),
        dataTableTheme: const DataTableThemeData(dataTextStyle: TextStyle(color: Colors.white)),
        fontFamily: 'Arial',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: Colors.black, textStyle: const TextStyle(fontFamily: 'Arial', fontSize: 18)),
        ),
        backgroundColor: const Color(0xFFCDC1FF),
        secondaryHeaderColor: const Color(0xFF6C63FF),
        primaryColor: const Color(0xFFFED66b),
      ),
      home: const MainPage(),
    );
  }
}
