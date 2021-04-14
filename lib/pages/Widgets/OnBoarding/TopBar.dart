import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/Widgets/OnBoarding/Bubble.dart';

class TopBar extends StatelessWidget {
  final color = const Color(0xff3030ED);

  final Widget BackPage;
  TopBar({required this.BackPage});
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return Container(
      width: c_width - 2 * 16.0,
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
                  width: 12,
                  height: 20,
                  fit: BoxFit.contain,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BackPage),
                  );
                },
              )),
        ],
      ),
    );
  }
}
