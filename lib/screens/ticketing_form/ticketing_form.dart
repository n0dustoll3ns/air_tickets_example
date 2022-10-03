// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../global/global_const.dart';

class TicketingForm extends StatelessWidget {
  const TicketingForm({super.key, required this.onBookPress});
  final Function onBookPress;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 22, horizontal: MediaQuery.of(context).size.width / 7),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Your Information',
                    style: TextStyle(fontSize: 16, color: Color(0xBB1E2019)),
                  ),
                  TextField(decoration: inputDecoration.copyWith(hintText: 'First Name')),
                  TextField(decoration: inputDecoration.copyWith(hintText: 'Last Name')),
                  TextField(decoration: inputDecoration.copyWith(hintText: 'Email')),
                  TextField(decoration: inputDecoration.copyWith(hintText: 'Phone Number')),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Your Date of birth',
                    style: TextStyle(fontSize: 16, color: Color(0xBB1E2019)),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 2, child: TextField(decoration: inputDecoration.copyWith(hintText: 'Day'))),
                      SizedBox(width: 9),
                      Expanded(
                          flex: 3, child: TextField(decoration: inputDecoration.copyWith(hintText: 'Month'))),
                      SizedBox(width: 9),
                      Expanded(
                          flex: 2, child: TextField(decoration: inputDecoration.copyWith(hintText: 'Year'))),
                    ],
                  ),
                  Text(
                    'More info',
                    style: TextStyle(fontSize: 16, color: Color(0xBB1E2019)),
                  ),
                  SizedBox(
                    height: 98,
                    child: TextField(maxLines: 3, decoration: inputDecoration.copyWith(hintText: '...')),
                  ),
                  SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.black,
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      onPressed: () => onBookPress(),
                      child: Text(
                        "Book Ticket",
                        style: cellTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
