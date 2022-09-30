import 'package:flutter/material.dart';

import '../../../global/global_const.dart';

class TicketTime extends StatelessWidget {
  const TicketTime({super.key, required this.title, required this.time});
  final String title;
  final TimeOfDay time;
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
            '${time.hour}:${time.minute}',
            style: cellTextStyle,
          ),
        ],
      ),
    );
  }
}
