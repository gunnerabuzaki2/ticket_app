import 'package:flutter/material.dart';

class AppTab extends StatelessWidget {
  final String tabText;
  final Color color;
  final bool isRight;

  const AppTab(
      {super.key,
      this.tabText = '',
      this.color = Colors.white,
      this.isRight = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return InkWell(
      child: Container(
        width: size * 0.44,
        decoration: BoxDecoration(
            color: color,
            borderRadius: isRight
                ? const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))
                : const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50))),
        child: Center(
          child: Text(
            tabText,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
