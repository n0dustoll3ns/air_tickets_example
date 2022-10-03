import 'package:flutter/material.dart';

class TicketingForm extends StatelessWidget {
  const TicketingForm({super.key});

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
                children: [
                  Text(
                    'Your Information',
                    style: TextStyle(fontSize: 16, color: Color(0xFF1E2019)),
                  ),
                  TextField(),
                  TextFormField(
                    initialValue: 'Notaristefano',
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your date of birth',
                    style: TextStyle(fontSize: 16, color: Color(0xFF1E2019)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
