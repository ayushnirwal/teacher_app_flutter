import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/Login/Login1.dart';
import 'package:octo_teacher_app/pages/OnBoarding/OnBoarding1.dart';
import 'package:octo_teacher_app/pages/OnBoarding/Widgets/TopBar.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [TopBar(backPage: Login1()), OnBoarding1()],
          ),
        ),
      ),
    ))));
  }
}
