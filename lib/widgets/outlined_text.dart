import 'package:flutter/material.dart';

class OutlinedText extends StatelessWidget {
  const OutlinedText({
    super.key,
    required this.data,
    this.shadowSize = 0.1,
    this.color = Colors.black,
  });
  final String data;
  final double shadowSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
                // bottomLeft
                offset: Offset(-shadowSize, -shadowSize),
                color: color),
            Shadow(
                // bottomRight
                offset: Offset(shadowSize, -shadowSize),
                color: color),
            Shadow(
                // topRight
                offset: Offset(shadowSize, shadowSize),
                color: color),
            Shadow(
                // topLeft
                offset: Offset(-shadowSize, shadowSize),
                color: color),
          ]),
    );
  }
}
