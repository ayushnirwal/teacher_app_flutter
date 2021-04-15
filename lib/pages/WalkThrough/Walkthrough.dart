import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/OnBoarding/OnBoarding.dart';
import 'package:octo_teacher_app/pages/OnBoarding/OnBoarding1.dart';
import 'package:octo_teacher_app/pages/WalkThrough/Widgets/Bubble.dart';
import 'package:octo_teacher_app/pages/WalkThrough/Walkthrough1.dart';
import 'package:octo_teacher_app/pages/WalkThrough/Walkthrough2.dart';
import 'package:octo_teacher_app/pages/WalkThrough/Walkthrough3.dart';

// ignore: must_be_immutable
class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  List<bool> filledArray = [true, false, false];
  final color = const Color(0xff3030ED);

  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: color,
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OnBoarding()));
              },
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Skip ",
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                        ),
                        Transform.rotate(
                          angle: 3.14,
                          child: Container(
                            width: 6,
                            height: 17,
                            child: Image.asset(
                              'assets/icons/back.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: PageView(
                      onPageChanged: (newPageNumber) {
                        setState(() {
                          filledArray = [
                            newPageNumber == 0,
                            newPageNumber == 1,
                            newPageNumber == 2
                          ];
                        });
                      },
                      controller: controller,
                      children: [
                        WalkThrough1(),
                        WalkThrough2(),
                        WalkThrough3()
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 24.0),
                    child: Center(
                        child: Bubble(
                      fillColor: Colors.white,
                      emptyColor: Colors.white38,
                      fillArarry: filledArray,
                      bubbleRadius: 8.0,
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
