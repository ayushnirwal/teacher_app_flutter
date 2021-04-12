import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final color = const Color(0xff3030ED);
  final grey = const Color(0xffC2C2C2);
  final double bubbleRadius = 10;
  final number;
  Bubble({this.number});
  @override
  Widget build(BuildContext context) {
    if (number == 1) {
      return Container(
          width: 72,
          height: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: bubbleRadius,
                height: bubbleRadius,
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              Container(
                width: bubbleRadius,
                height: bubbleRadius,
                decoration: BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              Container(
                width: bubbleRadius,
                height: bubbleRadius,
                decoration: BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ],
          ));
    } else if (number == 2) {
      return Container(
          width: 72,
          height: 24,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: grey,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ]));
    } else if (number == 3) {
      return Container(
          width: 72,
          height: 24,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ]));
    } else {
      return Text("nope");
    }
  }
}
