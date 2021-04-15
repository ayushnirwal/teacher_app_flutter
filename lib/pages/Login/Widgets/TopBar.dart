import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/Login/Widgets/Bubble.dart';

class TopBar extends StatelessWidget {
  final color = const Color(0xff3030ED);
  final List<bool> fillArray;

  final Widget BackPage;
  TopBar({required this.BackPage, required this.fillArray});
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      width: c_width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
              width: 50,
              height: 50,
              child: IconButton(
                color: color,
                padding: const EdgeInsets.all(0),
                icon: Image.asset(
                  'assets/icons/back.png',
                  width: 10,
                  height: 18,
                  fit: BoxFit.contain,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BackPage),
                  );
                },
              )),
          Container(
              child: Bubble(
            fillArarry: fillArray,
            fillColor: color,
            emptyColor: Color(0xffC2C2C2),
            bubbleRadius: 10.0,
          ))
        ],
      ),
    );
  }
}
