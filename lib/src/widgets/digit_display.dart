import 'package:flutter/material.dart';
import '../controller/digit_controller.dart';
import '../model/digit_config.dart';
import 'digit_box.dart';
import 'digit_keypad.dart';

class TabDigitInput extends StatefulWidget {

  final DigitConfig config;
  final Function(String)? onCompleted;

  const TabDigitInput({
    super.key,
    this.config = const DigitConfig(),
    this.onCompleted,
  });

  @override
  State<TabDigitInput> createState() => _TabDigitInputState();
}

class _TabDigitInputState extends State<TabDigitInput> {

  late DigitController controller;

  @override
  void initState() {
    super.initState();

    controller = DigitController(
      length: widget.config.length,
      onCompleted: widget.onCompleted,
    );

    controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        /// DIGIT BOXES
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.config.length, (index) {

            String? digit =
            index < controller.digits.length
                ? controller.digits[index]
                : null;

            bool active = controller.currentIndex == index;

            return Padding(
              padding: const EdgeInsets.all(6),
              child: DigitBox(
                digit: digit,
                isActive: active,
                config: widget.config,
              ),
            );
          }),
        ),

        const SizedBox(height: 30),

        /// KEYPAD
        DigitKeypad(controller: controller),
      ],
    );
  }
}
