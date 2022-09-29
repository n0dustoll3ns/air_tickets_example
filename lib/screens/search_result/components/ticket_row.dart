import 'package:air_tickets/model/ticket.dart';
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
      TicketCell(title: cellTitles[0], text: ticket.airline),
      TicketCell(title: cellTitles[1], text: ticket.from),
      TicketCell(title: cellTitles[2], text: ticket.to),
      TicketCell(title: cellTitles[3], text: ticket.toString()),
      TicketCell(title: cellTitles[4], text: ticket.price.toString()),
    ]);
  }
}
