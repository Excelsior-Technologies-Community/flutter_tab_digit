import 'package:flutter/material.dart';
import '../controller/digit_controller.dart';
import '../utils/digit_constants.dart';

class DigitKeypad extends StatelessWidget {

  final DigitController controller;

  const DigitKeypad({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: DigitConstants.keypadNumbers.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.4,
      ),
      itemBuilder: (context, index) {

        String value = DigitConstants.keypadNumbers[index];

        if (value == '') return const SizedBox();

        if (value == 'back') {
          return InkWell(
            onTap: controller.removeDigit,
            child: const Icon(Icons.backspace_outlined, size: 28),
          );
        }

        return InkWell(
          onTap: () => controller.addDigit(value),
          borderRadius: BorderRadius.circular(40),
          child: Center(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
      },
    );
  }
}
