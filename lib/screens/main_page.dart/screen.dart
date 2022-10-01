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
    return Row(
      mainAxisSize: MainAxisSize.min,
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
                    const SizedBox(
                      width: 2,
                    ),
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
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
