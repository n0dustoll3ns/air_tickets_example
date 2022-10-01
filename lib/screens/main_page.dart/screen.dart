import 'package:flutter/material.dart';

import '../../general/menu.dart';
import 'components/title_with_planes.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Menu(),
          ),
          TitleWithPlanes(),
        ],
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
