import 'package:flutter/material.dart';
import 'package:hikeine/pages/greeter.dart';

void main(List<String> args) {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Greeter(),
    );
  }
}
