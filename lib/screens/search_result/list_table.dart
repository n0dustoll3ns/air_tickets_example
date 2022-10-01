import 'package:air_tickets/screens/search_result/components/ticket_row.dart';
import 'package:flutter/material.dart';

import '../../global/global_const.dart';
import '../../model/ticket.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({required this.tickets, super.key});
  final List<Ticket> tickets;

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> with TickerProviderStateMixin {
  late Animation _containerRadiusAnimation, _containerSizeAnimation, _containerColorAnimation;
  late AnimationController _containerAnimationController;

  @override
  void initState() {
    super.initState();
    _containerAnimationController = AnimationController(vsync: this, duration: Duration(milliseconds: 5000));

    _containerRadiusAnimation =
        BorderRadiusTween(begin: BorderRadius.circular(100.0), end: BorderRadius.circular(0.0))
            .animate(CurvedAnimation(curve: Curves.ease, parent: _containerAnimationController));

    _containerSizeAnimation = Tween(begin: 0.0, end: 2.0)
        .animate(CurvedAnimation(curve: Curves.ease, parent: _containerAnimationController));

    _containerColorAnimation = ColorTween(begin: Colors.black, end: Colors.white)
        .animate(CurvedAnimation(curve: Curves.ease, parent: _containerAnimationController));

    _containerAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return AnimatedBuilder(
          animation: _containerAnimationController,
          builder: ((context, child) => Container(
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
                  children: List.generate(
                      widget.tickets.length, (index) => TicketRow(ticket: widget.tickets[index])),
                ),
              )),
        );
      }),
    );
  }
}
