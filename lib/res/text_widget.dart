import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  final TextAlign textAlign;
  const TextWidget(
      {super.key,
      required this.title,
      this.textStyle = const TextStyle(color: Colors.white),
      this.textAlign = TextAlign.end});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
      textAlign: textAlign,
    );
  }
}
