import 'package:flutter/material.dart';
import '../model/digit_config.dart';

class DigitBox extends StatelessWidget {

  final String? digit;
  final bool isActive;
  final DigitConfig config;

  const DigitBox({
    super.key,
    required this.digit,
    required this.isActive,
    required this.config,
  });

  @override
  Widget build(BuildContext context) {

    return AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      width: config.boxWidth,
      height: config.boxHeight,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isActive
              ? config.activeBorderColor
              : config.inactiveBorderColor,
          width: 2,
        ),
      ),
      child: Text(
        digit == null
            ? ''
            : config.obscureText
            ? '●'
            : digit!,
        style: config.textStyle,
      ),
    );
  }
}
