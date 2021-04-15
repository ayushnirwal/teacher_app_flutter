import 'package:flutter/material.dart';

class Bubble extends StatelessWidget {
  final color = const Color(0xff3030ED);
  final grey = const Color(0xffC2C2C2);

  final Color fillColor;
  final Color emptyColor;

  final double bubbleRadius;
  final List<bool> fillArarry;
  Bubble(
      {required this.fillArarry,
      required this.bubbleRadius,
      required this.fillColor,
      required this.emptyColor});
  @override
  Widget build(BuildContext context) {
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
                  color: (fillArarry[0]) ? fillColor : emptyColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: (fillArarry[1]) ? fillColor : emptyColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
            Container(
              width: bubbleRadius,
              height: bubbleRadius,
              decoration: BoxDecoration(
                  color: (fillArarry[2]) ? fillColor : emptyColor,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
            ),
          ],
        ));
  }
}
