## 🔢 flutter_tab_digit

flutter_tab_digit is a reusable Flutter PIN / Passcode input library that provides a complete digit keypad + animated input boxes just like Google Pay, PhonePe, Paytm or ATM PIN screen.

It removes the need to build custom PIN UI, focus handling, and keypad logic manually.

The user taps numbers on the keypad and the boxes automatically fill with smooth state updates.

-----------------

## ✨ Feature Preview

- 🔢 Digit based input (no keyboard typing)
- ⌨️ Built-in numeric keypad
- ➡️ Auto move to next box
- ⬅️ Backspace delete
- 🔒 Obscured PIN mode (● ● ● ●)
- 🎯 Completion callback
- 🎨 Customizable UI
- ⚡ Lightweight
- 📦 Plug & play integration

----------------------------

## 📦 Installation

Add dependency in your pubspec.yaml
```
dependencies:
  flutter_tab_digit:
    git:
      url: 
```
Then run:
```
flutter pub get
```

--------------------------------

## Preview

https://github.com/user-attachments/assets/ff431086-b9db-45f7-b4c7-f45f13f3a3ab


-------------------------------

## 🚀 Basic Usage
```
TabDigitInput(
  onCompleted: (pin) {
    print("Entered PIN: $pin");
  },
)
```

------------------------------

## 🎨 Custom Usage
```
TabDigitInput(
  config: DigitConfig(
    length: 6,
    obscureText: true,
    boxWidth: 55,
    boxHeight: 65,
    activeBorderColor: Colors.green,
    inactiveBorderColor: Colors.grey,
  ),
  onCompleted: (pin) {
    debugPrint(pin);
  },
)
```

-----------------------------------

## 📁 File Structure
```
lib/
│
├─ flutter_tab_digit.dart          // Main export
│
└─ src/
    ├─ controller/
    │    └─ digit_controller.dart   // Handles input & state
    │
    ├─ model/
    │    └─ digit_config.dart       // UI customization
    │
    ├─ utils/
    │    └─ digit_constants.dart    // Keypad numbers
    │
    └─ widgets/
         ├─ digit_box.dart          // Single box UI
         ├─ digit_display.dart      // Main widget
         └─ digit_keypad.dart       // Numeric keypad
```

---------------------------------------

## ⚙️ Properties

| Property            | Type             | Description               |
| ------------------- | ---------------- | ------------------------- |
| length              | int              | Number of digits          |
| obscureText         | bool             | Hide digits (●)           |
| boxWidth            | double           | Width of digit box        |
| boxHeight           | double           | Height of digit box       |
| activeBorderColor   | Color            | Active box color          |
| inactiveBorderColor | Color            | Inactive box color        |
| textStyle           | TextStyle        | Digit text style          |
| onCompleted         | Function(String) | Called when PIN completed |

-------------------------------------

## 📜 MIT License
```
Copyright (c) 2026 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```














