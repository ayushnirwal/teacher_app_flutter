import 'package:flutter/material.dart';

class WalkThrough2 extends StatelessWidget {
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
              'assets/images/Walkthrough2.png',
              height: 170,
              width: 240,
            ))),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 24.0, top: 40.0, right: 24.0),
              child: Text(
                "Get rewarded for doing your homework!",
                style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none),
                textAlign: TextAlign.center,
              )),
        ),
      ],
    );
  }
}
