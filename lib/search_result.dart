import 'package:flutter/material.dart';

import 'global_const.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        padding: const EdgeInsets.only(
          left: 19,
          right: 19,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
        ),
        child: DataTable(
          headingRowHeight: 0,
          columns: const <DataColumn>[DataColumn(label: SizedBox())],
          rows: [
            DataRow(cells: [
              DataCell(
                Column(
                  children: [Text(co), Text(from[0])],
                ),
              ),
              // DataCell(
              //   Column(
              //     children: [Text(co), Text(from[1])],
              //   ),
              // ),
            ])
          ],
        ),
      ),
    );
  }
}
