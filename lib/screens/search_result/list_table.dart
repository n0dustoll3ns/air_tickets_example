import 'package:air_tickets/screens/search_result/components/ticket_row.dart';
import 'package:flutter/material.dart';

import '../../global/global_const.dart';
import '../../model/ticket.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({required this.tickets, super.key});
  final List<Ticket> tickets;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          constraints: constraints,
          margin: const EdgeInsets.symmetric(horizontal: 22),
          padding: const EdgeInsets.only(
            left: 19,
            right: 19,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          ),
          child: ListView(
            children: List.generate(tickets.length, (index) => TicketRow(ticket: tickets[index])),
          ),
        );
      }),
    );
  }
}
