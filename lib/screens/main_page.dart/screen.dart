import 'package:air_tickets/screens/main_page.dart/components/search_filters.dart';
import 'package:flutter/material.dart';

import '../../general/menu.dart';
import 'components/title_with_planes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Menu(),
            TitleWithPlanes(),
            SizedBox(height: 38),
            SearchFilters(),
          ],
        ),
      ),
    );
  }
}

class SearchPanel extends StatelessWidget {
  const SearchPanel({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }
}
