import 'package:air_tickets/screens/main_page.dart/components/search_filters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../general/menu.dart';
import '../../global/global_const.dart';
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
            SizedBox(height: 38),
            SearchPanel()
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
    var toController = TextEditingController();
    var fromController = TextEditingController();
    DateTime tomorrow = DateTime.now().add(Duration(hours: 24));
    String dateHint = '${tomorrow.weekday}-${tomorrow.month}-${tomorrow.day}';
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 103,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {}, icon: SvgPicture.asset('plane_up_icon.svg')),
                        IconButton(
                            onPressed: () {
                              toController.text = toController.text + fromController.text;
                              fromController.text = toController.text
                                  .substring(0, toController.text.length - fromController.text.length);
                              toController.text = toController.text.substring(fromController.text.length);
                            },
                            icon: SvgPicture.asset('swap_direction.svg')),
                        IconButton(onPressed: () {}, icon: SvgPicture.asset('plane_up_icon.svg')),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: toController,
                            decoration: inputDecoration.copyWith(hintText: 'from'),
                          ),
                        ),
                        const SizedBox(width: 2),
                        Expanded(
                          child: TextFormField(
                            controller: fromController,
                            decoration: inputDecoration.copyWith(hintText: 'to'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 31,
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 103,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(onPressed: () {}, icon: SvgPicture.asset('calendar_start.svg')),
                          TextFormField(
                            controller: fromController,
                            decoration: inputDecoration.copyWith(hintText: dateHint),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(onPressed: () {}, icon: SvgPicture.asset('calendar_end.svg')),
                          TextFormField(
                            controller: fromController,
                            decoration: inputDecoration.copyWith(hintText: 'return'),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 33,
        ),
        SizedBox(
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
        )
      ],
    );
  }
}
