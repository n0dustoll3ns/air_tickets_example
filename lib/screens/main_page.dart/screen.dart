import 'package:air_tickets/screens/main_page.dart/components/reset_button.dart';
import 'package:air_tickets/screens/main_page.dart/components/search_filters.dart';
import 'package:air_tickets/screens/main_page.dart/components/search_properties.dart';
import 'package:air_tickets/screens/search_result/list_table.dart';
import 'package:flutter/material.dart';

import '../../general/menu.dart';
import '../../model/ticket.dart';
import 'components/search_button.dart';
import 'components/title_with_planes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late Animation<double> _searcherTools;
  late Animation<double> _searcherResults;
  late AnimationController _searcherAnimationController;
  late Widget mainButton;

  final List<Ticket> _tickets = List.generate(24, (index) => Ticket());

  @override
  void initState() {
    // _tickets = [];
    mainButton = SearchButton(onSearchPress: () {
      _showResults();
    });
    _searcherAnimationController =
        AnimationController(value: 0, vsync: this, duration: const Duration(milliseconds: 1500));
    _searcherTools = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _searcherAnimationController,
        curve: const Interval(0.0, 0.450, curve: Curves.easeInOutQuart),
      ),
    );
    _searcherResults = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      parent: _searcherAnimationController,
      curve: const Interval(0.550, 1.000, curve: Curves.easeInOutQuart),
    ));
    super.initState();
    // _searcherAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: AnimatedBuilder(
        animation: _searcherAnimationController,
        builder: (context, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Menu(),
              SizeTransition(
                sizeFactor: _searcherTools,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children:const  [
                    TitleWithPlanes(),
                    SizedBox(height: 38),
                    SearchFilters(),
                    SizedBox(height: 38),
                  ],
                ),
              ),
              const SearchProperties(),
              const SizedBox(height: 33),
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 1200),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: mainButton,
              ),
              const SizedBox(height: 33),
              SizeTransition(
                sizeFactor: _searcherResults,
                child: SearchResults(
                  tickets: _tickets,
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Future<void> _showResults() async {
    if (_searcherAnimationController.status == AnimationStatus.completed) {
      mainButton = SearchButton(onSearchPress: () => _showResults());
      await _searcherAnimationController.animateBack(0, duration: const Duration(milliseconds: 1600));
    } else {
      mainButton = ResetButton(onResetPress: () => _showResults());
      await _searcherAnimationController.forward().orCancel;
    }
  }
}
