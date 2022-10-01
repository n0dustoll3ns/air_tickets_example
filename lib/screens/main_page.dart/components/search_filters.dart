import 'package:flutter/material.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({super.key});

  @override
  Widget build(BuildContext context) {
    var btnStyle = TextButton.styleFrom();
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(onPressed: () {}, child: const Text('Round trip ⯆')),
          const SizedBox(
            width: 26,
          ),
          TextButton(onPressed: () {}, child: const Text('1 Adult ⯆')),
          const SizedBox(
            width: 26,
          ),
          TextButton(onPressed: () {}, child: const Text('Economy ⯆')),
        ],
      ),
    );
  }
}
