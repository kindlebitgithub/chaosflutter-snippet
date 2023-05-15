import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: const Divider(
              thickness: 1,
              color: Colors.grey,
            )),
      ),
      Text(
        label,
        style: TextStyle(
            color: const Color(0XFF000000),
            fontSize: 10.sp,
            fontWeight: FontWeight.w500),
      ),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: const Divider(
              thickness: 1,
              color: Colors.grey,
            )),
      ),
    ]);
  }
}
