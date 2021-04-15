import 'package:flutter/material.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserActions.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserState.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:octo_teacher_app/pages/OnBoarding/Widgets/ProfileCard.dart';
import 'package:octo_teacher_app/redux/AppState.dart';

class OnBoarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return StoreConnector<AppState, Store>(
      converter: (store) => store,
      builder: (context, store) {
        return Column(children: [
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
          TextButton(
            onPressed: () {
              store.dispatch(profileSelectionAction(ProfileType.Teacher));
            },
            child: ProfileCard(
              text: "Teacher",
              image: "assets/images/profileTeacher.png",
            ),
          ),
          TextButton(
            onPressed: () {
              store.dispatch(profileSelectionAction(ProfileType.Tutor));
            },
            child: ProfileCard(
              text: "Tutor",
              image: "assets/images/profileTutor.png",
            ),
          ),
          TextButton(
            onPressed: () {
              store.dispatch(profileSelectionAction(ProfileType.Student));
            },
            child: ProfileCard(
              text: "Student",
              image: "assets/images/profileStudent.png",
            ),
          ),
          TextButton(
            onPressed: () {
              store.dispatch(profileSelectionAction(ProfileType.Parent));
            },
            child: ProfileCard(
              text: "Parent",
              image: "assets/images/profileParent.png",
            ),
          ),
          TextButton(
            onPressed: () {
              store.dispatch(profileSelectionAction(ProfileType.School));
            },
            child: ProfileCard(
              text: "School",
              image: "assets/images/profileSchool.png",
            ),
          ),
        ]);
      },
    );
  }
}
