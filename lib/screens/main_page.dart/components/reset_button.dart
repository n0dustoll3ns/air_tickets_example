import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key, required this.onResetPress});
  final Function onResetPress;
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
            onResetPress();
          },
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Text('Reset Filters'),
              Align(alignment: Alignment.centerRight, child: Icon(Icons.cancel_outlined))
            ],
          )),
    );
  }
}
