import 'package:flutter/material.dart';

class TicketPrice extends StatelessWidget {
  const TicketPrice({super.key, required this.title, required this.price});
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 35),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 36,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0, foregroundColor: Colors.black, backgroundColor: Theme.of(context).primaryColor),
            onPressed: () {},
            child: Text(
              "€ $price",
            ),
          )
        ],
      ),
    );
  }
}
