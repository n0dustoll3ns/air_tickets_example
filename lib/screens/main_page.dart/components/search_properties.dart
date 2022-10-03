import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../global/global_const.dart';

class SearchProperties extends StatefulWidget {
  const SearchProperties({super.key});

  @override
  State<SearchProperties> createState() => _SearchPropertiesState();
}

class _SearchPropertiesState extends State<SearchProperties> {
  @override
  Widget build(BuildContext context) {
    var toController = TextEditingController();
    var fromController = TextEditingController();
    DateTime tomorrow = DateTime.now().add(const Duration(hours: 24));
    String dateHint = '${tomorrow.weekday}-${tomorrow.month}-${tomorrow.day}';
    return Padding(
      padding: pagePadding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      const SizedBox(width: 2),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: () {}, icon: SvgPicture.asset('calendar_start.svg')),
                        TextFormField(
                          controller: fromController,
                          decoration: inputDecoration.copyWith(hintText: dateHint),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: () {}, icon: SvgPicture.asset('calendar_end.svg')),
                        TextFormField(
                          controller: fromController,
                          decoration: inputDecoration.copyWith(hintText: 'return'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
