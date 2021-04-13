import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/Walkthrough.dart';
import 'package:octo_teacher_app/pages/Walkthrough1.dart';

class Login3 extends StatefulWidget {
  @override
  _Login3State createState() => _Login3State();
}

class _Login3State extends State<Login3> with TickerProviderStateMixin {
  final color = const Color(0xff3030ED);
  late AnimationController controller;

  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        setState(() {});
        if (controller.isCompleted) {
          //dispatch login action

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WalkThrough()),
          );
        }
      });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: Center(
                    child: Container(
      color: color,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 90.0),
              child: Center(
                  child: Image.asset(
                'assets/images/LoginVerifyingPhone.png',
                height: 140,
                width: 190,
              ))),
          Container(
              padding: const EdgeInsets.only(top: 24.0),
              child: Center(
                  child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        "Verifying",
                        style: TextStyle(
                            fontFamily: 'Epilogue',
                            fontSize: 14,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      )))),
          Container(
              padding: const EdgeInsets.only(top: 12.0),
              child: Center(
                  child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        "Your Phone Number",
                        style: TextStyle(
                            fontFamily: 'Epilogue',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      )))),
          Center(
              child: Container(
            padding: const EdgeInsets.only(top: 40.0),
            width: c_width * 0.9,
            child: LinearProgressIndicator(
              backgroundColor: Color.fromRGBO(236, 236, 236, 0.3),
              valueColor: new AlwaysStoppedAnimation<Color>(
                Color.fromRGBO(236, 236, 236, 1),
              ),
              value: controller.value,
              semanticsLabel: 'Linear progress indicator',
            ),
          ))
        ],
      ),
    )))));
  }
}
