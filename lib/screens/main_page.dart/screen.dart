import 'package:air_tickets/screens/main_page.dart/components/search_filters.dart';
import 'package:flutter/material.dart';

import '../../general/menu.dart';
import 'components/search_panel.dart';
import 'components/title_with_planes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late Animation<double> _searcherAnimation;

  late AnimationController _searcherAnimationController;

  @override
  void initState() {
    _searcherAnimationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 2500));
    _searcherAnimation =
        CurvedAnimation(parent: _searcherAnimationController, curve: Curves.fastLinearToSlowEaseIn);
    super.initState();
    _searcherAnimationController.forward();
  }

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
          children: <Widget>[
            const Menu(),
            SizeTransition(
              axis: Axis.vertical,
              sizeFactor: _searcherAnimation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  TitleWithPlanes(),
                  SizedBox(height: 38),
                  SearchFilters(),
                ],
              ),
            ),
            SizedBox(height: 38),
            SearchPanel(
              showSearchResult: _createRoute,
            )
          ],
        ),
      ),
    );
  }

  void _createRoute() {
    if (_searcherAnimation.status != AnimationStatus.completed) {
      _searcherAnimationController.forward();
    } else {
      _searcherAnimationController.animateBack(0, duration: Duration(seconds: 1));
    }
  }
}
