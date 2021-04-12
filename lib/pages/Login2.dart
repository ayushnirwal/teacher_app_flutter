import 'package:flutter/material.dart';
import 'dart:async';

import 'package:octo_teacher_app/pages/Login1.dart';
import 'package:octo_teacher_app/pages/OnBoarding1.dart';
import 'package:octo_teacher_app/pages/Widgets/Login/MidBar.dart';
import 'package:octo_teacher_app/pages/Widgets/Login/OTPEntry.dart';
import 'package:octo_teacher_app/pages/Widgets/Login/PhoneNumberInput.dart';
import 'package:octo_teacher_app/pages/Widgets/Login/TopBar.dart';

class Login2 extends StatefulWidget {
  final String phoneNumber;

  Login2({required this.phoneNumber});

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final interval = const Duration(seconds: 1);

  final int timerMaxSeconds = 30;

  bool timerEnded = false;

  final color = const Color(0xff3030ED);

  final grey = const Color(0xffF4f4f4);

  final graphite = const Color(0xffBEBEBE);

  int currentSeconds = 0;

  String get timerText =>
      '${((timerMaxSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((timerMaxSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}';

  startTimeout([int? milliseconds]) {
    var duration = interval;
    Timer.periodic(duration, (timer) {
      setState(() {
        currentSeconds = timer.tick;
        if (timer.tick >= timerMaxSeconds) {
          timer.cancel();
          setState(() {
            timerEnded = true;
          });
        }
        ;
      });
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TopBar(
                              BackPage: Login1(
                                phoneNumber: widget.phoneNumber,
                              ),
                              filledBubleCount: 2,
                            ),
                            MidBar(
                              smallText: "Verify phone number",
                              bigText: "We’ve sent an OTP to your number",
                            ),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 24.0),
                                        child: OTPEntry()),
                                    Container(
                                        padding:
                                            const EdgeInsets.only(left: 24.0),
                                        child: Text(
                                          "OTP sent to",
                                          style: TextStyle(
                                              fontFamily: 'Epilogue',
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              decoration: TextDecoration.none),
                                        )),
                                    PhoneNumberInput(
                                        type: Type.display,
                                        phoneNumber: widget.phoneNumber),
                                    Container(
                                        height: 48.0,
                                        margin:
                                            const EdgeInsets.only(left: 15.0),
                                        child: (!timerEnded)
                                            ? TextButton(
                                                onPressed: null,
                                                child: Text(
                                                  "Resend OTP in $timerText",
                                                  style: TextStyle(
                                                      fontFamily: 'Epilogue',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: graphite,
                                                      decoration:
                                                          TextDecoration.none),
                                                ))
                                            : TextButton(
                                                onPressed: () {
                                                  setState(() {
                                                    currentSeconds =
                                                        timerMaxSeconds;
                                                    timerEnded = false;
                                                    startTimeout();
                                                  });
                                                },
                                                child: Text(
                                                  "Resend",
                                                  style: TextStyle(
                                                      fontFamily: 'Epilogue',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: color,
                                                      decoration:
                                                          TextDecoration.none),
                                                ))),
                                  ]),
                            ),
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 130.0,
                                    left: 16.0,
                                    right: 16.0,
                                    bottom: 16.0),
                                width: double.infinity,
                                height: 56,
                                decoration: BoxDecoration(
                                    color: color,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Directionality(
                                    textDirection: TextDirection.ltr,
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      OnBoarding1()));
                                        },
                                        child: Center(
                                            child: Directionality(
                                                textDirection:
                                                    TextDirection.ltr,
                                                child: Text(
                                                  'Next',
                                                  style: TextStyle(
                                                      fontFamily: 'Epilogue',
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                      decoration:
                                                          TextDecoration.none),
                                                ))))))
                          ]),
                    )))));
  }
}
