import 'package:air_tickets/model/ticket.dart';
import 'package:air_tickets/screens/search_result/components/ticket_price.dart';
import 'package:air_tickets/screens/search_result/components/ticket_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../global/global_const.dart';
import 'ticket_row_cell.dart';

class TicketRow extends StatelessWidget {
  final Ticket ticket;

  const TicketRow({required this.ticket, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, mainAxisSize: MainAxisSize.max, children: [
      Expanded(child: TicketCell(title: cellTitles[0], text: ticket.airline)),
      Expanded(child: TicketCell(title: cellTitles[1], text: ticket.from)),
      Expanded(child: TicketCell(title: cellTitles[2], text: ticket.to)),
      Expanded(child: TicketTime(title: cellTitles[3], time: ticket.time)),
      Expanded(flex: 2, child: TicketPrice(title: cellTitles[4], price: ticket.price)),
    ]);
  }
}
