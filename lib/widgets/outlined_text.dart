import 'package:flutter/material.dart';

class OutlinedText extends StatelessWidget {
  const OutlinedText({
    super.key,
    required this.data,
    this.shadowSize = 0.1,
    this.color = Colors.black,
    this.style,
  });
  final String data;
  final double shadowSize;
  final Color color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: style?.fontSize ?? 40,
        fontWeight: style?.fontWeight ?? FontWeight.bold,
        color: style?.color ?? Colors.white,
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
        ],
      ),
    );
  }
}
