import 'package:flutter/material.dart';
import 'inputScreen.dart';
import 'resultScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // color: Color(0xff272A4D),
      home: InputScreen(),
    );
  }
}
