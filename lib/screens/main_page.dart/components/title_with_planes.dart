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
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Best Price for Business class',
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                'Simple book, easy saying',
                style: TextStyle(fontSize: 18, color: const Color(0xFF1e2019).withOpacity(0.5)),
              )
            ],
          ),
          Transform.translate(
            offset: const Offset(620, 0),
            child: SvgPicture.asset(
              'plane.svg',
            ),
          )
        ],
      ),
    );
  }
}
