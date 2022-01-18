import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  String? text;
  Color? color;
  double? size;
  MyTextWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w700,
        fontFamily: 'Meduim'
      ),
    );
  }
}
