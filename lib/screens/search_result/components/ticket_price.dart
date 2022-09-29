import 'package:flutter/material.dart';

class TicketPrice extends StatelessWidget {
  const TicketPrice({super.key, required this.title, required this.price});
  final String title;
  final double price;
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
          ElevatedButton(
            onPressed: () {},
            child: Text(
              price.toString(),
            ),
          )
        ],
      ),
    );
  }
}
