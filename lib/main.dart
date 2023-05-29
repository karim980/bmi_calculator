import 'package:bmi_calculator/bmi_result.dart';
import 'package:bmi_calculator/bmi_scr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(),
      scrollBehavior:ScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: bmi()
    );
  }
}
