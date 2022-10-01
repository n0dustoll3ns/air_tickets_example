
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TitleWithPlanes extends StatelessWidget {
  const TitleWithPlanes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Transform.translate(
            offset: const Offset(-600, 0),
            child: SvgPicture.asset(
              'plane.svg',
            ),
          ),
          Text(
            'Best Price for Business class',
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          Transform.translate(
            offset: const Offset(600, 0),
            child: SvgPicture.asset(
              'plane.svg',
            ),
          )
        ],
      ),
    );
  }
}

