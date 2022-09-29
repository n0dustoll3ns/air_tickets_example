import 'package:flutter/material.dart';

class TicketCell extends StatelessWidget {
  const TicketCell({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    const whiteTextStyle = TextStyle(color: Colors.white);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 35),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: whiteTextStyle,
          ),
          const SizedBox(
            height: 36,
          ),
          Text(
            text,
            style: whiteTextStyle,
          )
        ],
      ),
    );
  }
}
