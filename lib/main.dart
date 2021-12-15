import 'package:flutter/material.dart';
import 'package:mockup_tinder/money_page.dart';
import 'package:mockup_tinder/tinder_page.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TinderPage(),
      // home: MoneyPage(),
    );
  }
}
