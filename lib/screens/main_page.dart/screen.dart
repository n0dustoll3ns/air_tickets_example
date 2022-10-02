import 'package:air_tickets/screens/main_page.dart/components/search_filters.dart';
import 'package:air_tickets/screens/main_page.dart/components/search_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../general/menu.dart';
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
                  SizedBox(height: 38),
                  SearchProperties(),
                ],
              ),
            ),
            const SizedBox(height: 33),
            AnimatedSwitcher(
                duration: Duration(milliseconds: 2500), child: SearchButton(onSearchPress: () {})),
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

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, required this.onSearchPress});
  final Function onSearchPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: 48,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 24, color: Colors.black),
              backgroundColor: Theme.of(context).secondaryHeaderColor),
          onPressed: () {},
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Text('Search Flights'),
              Align(alignment: Alignment.centerRight, child: SvgPicture.asset('loupe.svg'))
            ],
          )),
    );
  }
}
