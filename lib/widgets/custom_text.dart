import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  TextStyle? style;
  TextOverflow? overflow;
  TextAlign? textAlign;

  CustomText({required this.text, this.style, this.overflow, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      style: style,
    );
  }
}
