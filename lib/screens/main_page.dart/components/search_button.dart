
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          onPressed: () {
            onSearchPress();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Text('Search Flights'),
              Align(alignment: Alignment.centerRight, child: SvgPicture.asset('assets/loupe.svg'))
            ],
          )),
    );
  }
}
