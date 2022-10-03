import 'dart:math';

import 'package:air_tickets/model/ticket.dart';
import 'package:air_tickets/screens/search_result/components/ticket_price.dart';
import 'package:air_tickets/screens/search_result/components/ticket_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../global/global_const.dart';
import '../../ticketing_form/ticketing_form.dart';
import 'ticket_row_cell.dart';

class TicketRow extends StatefulWidget {
  final Ticket ticket;

  const TicketRow({required this.ticket, super.key});

  @override
  State<TicketRow> createState() => _TicketRowState();
}

class _TicketRowState extends State<TicketRow> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      value: 0,
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOutQuart,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, mainAxisSize: MainAxisSize.max, children: [
          Expanded(child: TicketCell(title: cellTitles[0], text: widget.ticket.airline)),
          Expanded(child: TicketCell(title: cellTitles[1], text: widget.ticket.from)),
          Expanded(child: TicketCell(title: cellTitles[2], text: widget.ticket.to)),
          Expanded(child: TicketTime(title: cellTitles[3], time: widget.ticket.time)),
          Expanded(
              flex: 2,
              child: TicketPrice(
                title: cellTitles[4],
                price: widget.ticket.price,
                onPriceTap: () => openTicketingForm(),
              )),
        ]),
        SizeTransition(
          sizeFactor: _animation,
          axis: Axis.vertical,
          child: Container(
            color: Theme.of(context).cardColor,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            height: 450,
            width: double.infinity,
            child: const TicketingForm(),
          ),
        ),
      ],
    );
  }

  void openTicketingForm() {
    if (_animation.status != AnimationStatus.completed) {
      _controller.forward();
    } else {
      _controller.animateBack(0, duration: const Duration(seconds: 1));
    }
  }
}
