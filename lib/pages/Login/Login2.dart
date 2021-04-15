import 'package:flutter/material.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserActionTypes.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserActions.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:octo_teacher_app/pages/Login/Login1.dart';
import 'package:octo_teacher_app/pages/Login/Login3.dart';
import 'package:octo_teacher_app/pages/Login/Widgets/MidBar.dart';
import 'package:octo_teacher_app/pages/Login/Widgets/OTPEntry.dart';
import 'package:octo_teacher_app/pages/Login/Widgets/PhoneNumberInput.dart';
import 'package:octo_teacher_app/pages/Login/Widgets/TopBar.dart';
import 'dart:async';
import 'package:octo_teacher_app/redux/AppState.dart';

class Login2 extends StatefulWidget {
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
                              BackPage: Login1(),
                              fillArray: [true, true, false],
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
                                    StoreConnector<AppState, String>(
                                        converter: (store) =>
                                            store.state.userState.phoneNumber,
                                        builder: (context, phoneNumber) {
                                          return PhoneNumberInput(
                                              type: Type.display,
                                              phoneNumber: phoneNumber);
                                        }),
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
                                    child: StoreConnector<AppState, Store>(
                                      converter: (state) => state,
                                      builder: (context, store) {
                                        return TextButton(
                                            onPressed: () {
                                              store.dispatch(
                                                  otpVerificationAction());
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Login3()));
                                            },
                                            child: Center(
                                                child: Directionality(
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    child: Text(
                                                      'Next',
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Epilogue',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white,
                                                          decoration:
                                                              TextDecoration
                                                                  .none),
                                                    ))));
                                      },
                                    )))
                          ]),
                    )))));
  }
}
