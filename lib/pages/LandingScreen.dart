import 'package:flutter/material.dart';
import 'Login1.dart';

class LandingScreen extends StatelessWidget {
  final color = const Color(0xff3030ED);
  @override
  Widget build(BuildContext context) {
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
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, top: 66.0),
              child: Center(
                  child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        "Welcome to \n The Homework App",
                        style: TextStyle(
                            fontFamily: 'Epilogue',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            decoration: TextDecoration.none),
                        textAlign: TextAlign.center,
                      )))),
          Expanded(
              child: Container(
                  margin: const EdgeInsets.only(bottom: 250.0),
                  child: Center(
                      child: Image.asset(
                    'assets/images/Landing.png',
                    height: 170,
                    width: 240,
                  )))),
          Container(
              margin:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              width: double.infinity,
              height: 56,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login1(
                                    phoneNumber: "",
                                  )),
                        );
                      },
                      child: Center(
                          child: Directionality(
                              textDirection: TextDirection.ltr,
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    fontFamily: 'Epilogue',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    decoration: TextDecoration.none),
                              ))))))
        ],
      ),
    )))));
  }
}
