import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String text;
  final String image;
  ProfileCard({required this.text, required this.image});
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return Container(
      width: c_width - 2 * 16.0,
      height: 100.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          boxShadow: [BoxShadow(blurRadius: 12.0, color: Colors.black26)]),
      child: Stack(
        children: [
          Container(
            width: (c_width - 2 * 16.0) * 0.5,
            height: 100,
            margin: const EdgeInsets.only(top: 48, left: 24),
            child: Text(
              text,
              style: TextStyle(
                  fontFamily: 'Epilogue',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: (c_width) * 0.5),
              width: (c_width - 2 * 16.0) * 0.5,
              height: 100,
              child: Image.asset(image))
        ],
      ),
    );
  }
}
