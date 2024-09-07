import 'package:flutter/material.dart';

class AppDots extends StatelessWidget {
  final int divider;
  final double width;
  const AppDots({super.key, required this.divider, this.width = 3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      //print('${constraints.constrainWidth()}');
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / divider).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white)),
            ),
          ));
    });
  }
}
