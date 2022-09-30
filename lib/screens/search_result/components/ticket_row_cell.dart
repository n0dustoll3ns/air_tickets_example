import 'package:flutter/material.dart';

import '../../../global/global_const.dart';

class TicketCell extends StatelessWidget {
  const TicketCell({super.key, required this.title, required this.text});
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: cellPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: cellTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: cellPadding.bottom,
          ),
          Text(
            text,
            style: cellTextStyle,
          )
        ],
      ),
    );
  }
}
