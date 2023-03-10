import 'package:flutter/material.dart';
import 'Input_page.dart';
void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFFBDD431),
        scaffoldBackgroundColor: const Color(0xFF70A72B),
      ),
      home: const Input_page(),
    );
  }
}


