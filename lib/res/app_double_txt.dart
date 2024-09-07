import 'package:flutter/material.dart';

class App_double_txt extends StatelessWidget {
  final String firstTxt;
  final String secondTxt;
  final double fontSize;
  final VoidCallback func;
  const App_double_txt(
      {super.key,
      required this.firstTxt,
      required this.secondTxt,
      required this.func,
      this.fontSize = 15.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(firstTxt,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize,
                  fontWeight: FontWeight.w500)),
          InkWell(
              onTap: func,
              child: Text(
                secondTxt,
                style: const TextStyle(color: Colors.blue),
              )),
        ],
      ),
    );
  }
}
