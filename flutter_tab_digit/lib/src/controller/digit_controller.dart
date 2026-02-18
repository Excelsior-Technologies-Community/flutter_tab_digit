import 'package:flutter/material.dart';

class DigitController extends ChangeNotifier {

  final int length;
  final Function(String)? onCompleted;

  DigitController({
    required this.length,
    this.onCompleted,
  });

  final List<String> _digits = [];

  List<String> get digits => _digits;

  /// add number
  void addDigit(String digit) {
    if (_digits.length >= length) return;

    _digits.add(digit);
    notifyListeners();

    if (_digits.length == length) {
      onCompleted?.call(_digits.join());
    }
  }

  /// delete
  void removeDigit() {
    if (_digits.isEmpty) return;

    _digits.removeLast();
    notifyListeners();
  }

  /// clear all
  void clear() {
    _digits.clear();
    notifyListeners();
  }

  /// current index
  int get currentIndex => _digits.length;
}
