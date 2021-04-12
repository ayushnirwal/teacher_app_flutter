import 'package:flutter/material.dart';
import 'pages/LandingScreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final color = const Color(0xff3030ED);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(child: LandingScreen()),
    );
  }
}
