import 'package:flutter/material.dart';

import '../../general/menu.dart';
import '../../model/ticket.dart';
import 'list_table.dart';

class Tickets extends StatelessWidget {
  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Menu(),
            SearchResults(tickets: List.generate(62, (index) => Ticket())),
          ],
        ),
      ),
    );
  }
}
