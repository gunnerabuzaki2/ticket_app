import 'package:flutter/material.dart';

class StackBox extends StatelessWidget {
  const StackBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: size * .42,
          height: 210,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
          right: -45,
          top: -40,
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                border: Border.all(width: 18, color: const Color(0xFF189999)),
                shape: BoxShape.circle),
          ),
        )
      ],
    );
  }
}
