import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

import '../../general/menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Menu(),
          ),
          Row(
            children: [
              Transform.translate(
                offset: Offset(
                  -MediaQuery.of(context).size.width * .2,
                  0,
                ),
                child: SvgPicture.asset(
                  'plane.svg',
                ),
              ),
              Expanded(child: SizedBox()),
              Transform.translate(
                offset: Offset(
                  MediaQuery.of(context).size.width * .1,
                  0,
                ),
                child: SvgPicture.asset(
                  'plane.svg',
                ),
              )
            ],
          ),
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
