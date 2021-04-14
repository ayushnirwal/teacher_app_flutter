import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/Login1.dart';
import 'package:octo_teacher_app/pages/Widgets/OnBoarding/ProfileCard.dart';
import 'package:octo_teacher_app/pages/Widgets/OnBoarding/TopBar.dart';

class OnBoarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              TopBar(BackPage: Login1()),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: c_width - 48,
                child: Text(
                  "Select your profile",
                  style: TextStyle(
                      fontFamily: 'Epilogue',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ),
              ProfileCard(
                text: "Teacher",
                image: "assets/images/profileTeacher.png",
              ),
              ProfileCard(
                text: "Tutor",
                image: "assets/images/profileTutor.png",
              ),
              ProfileCard(
                text: "Student",
                image: "assets/images/profileStudent.png",
              ),
              ProfileCard(
                text: "Parent",
                image: "assets/images/profileParent.png",
              ),
              ProfileCard(
                text: "School",
                image: "assets/images/profileSchool.png",
              ),
            ],
          ),
        ),
      ),
    ))));
  }
}
