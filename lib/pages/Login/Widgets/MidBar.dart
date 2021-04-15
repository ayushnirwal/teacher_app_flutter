import 'package:flutter/material.dart';

class MidBar extends StatelessWidget {
  String smallText;
  String bigText;

  MidBar({required this.smallText, required this.bigText});

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return Container(
      width: c_width,
      child: Stack(
        children: [
          Container(
            width: c_width * 0.7,
            padding: const EdgeInsets.only(left: 24.0, top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  smallText,
                  style: TextStyle(
                      fontFamily: 'Epilogue',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  bigText,
                  style: TextStyle(
                      fontFamily: 'Epilogue',
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            width: c_width * 0.5,
            transform: Matrix4.translationValues(c_width * 0.5, -60.0, 0.0),
            child: Image.asset(
              "assets/images/OnBoarding1.png",
              width: 260,
              height: 250,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
