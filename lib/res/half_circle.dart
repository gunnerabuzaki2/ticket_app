import 'package:flutter/material.dart';

class HalfCircle extends StatelessWidget {
  final bool isRight;
  const HalfCircle({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 15,
        width: 10,
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: isRight
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12))
                  : const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
        ));
  }
}
