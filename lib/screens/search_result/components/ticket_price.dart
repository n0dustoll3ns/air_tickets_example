import 'package:flutter/material.dart';

import '../../../global/global_const.dart';

class TicketPrice extends StatelessWidget {
  const TicketPrice({super.key, required this.title, required this.price, required this.onPriceTap});
  final String title;
  final Function onPriceTap;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cellPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: cellTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: cellPadding.bottom,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 33),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.black,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: () {
                onPriceTap();
              },
              child: Text(
                "€ $price",
                style: cellTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
