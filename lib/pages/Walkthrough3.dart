import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/OnBoarding.dart';

class WalkThrough3 extends StatelessWidget {
  final color = const Color(0xff3030ED);
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.only(top: 150.0),
            child: Center(
                child: Image.asset(
              'assets/images/Walkthrough3.png',
              height: 170,
              width: 240,
            ))),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 24.0, top: 40.0, right: 24.0),
              child: Text(
                "Increase student participation",
                style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center,
              )),
        ),
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
                              builder: (context) => OnBoarding()));
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
    );
  }
}
