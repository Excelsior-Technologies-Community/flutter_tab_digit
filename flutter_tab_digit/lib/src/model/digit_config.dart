import 'package:flutter/material.dart';

class DigitConfig {

  final int length;
  final bool obscureText;
  final double boxWidth;
  final double boxHeight;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final TextStyle textStyle;

  const DigitConfig({
    this.length = 4,
    this.obscureText = true,
    this.boxWidth = 50,
    this.boxHeight = 60,
    this.activeBorderColor = Colors.blue,
    this.inactiveBorderColor = Colors.grey,
    this.textStyle = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  });
}
