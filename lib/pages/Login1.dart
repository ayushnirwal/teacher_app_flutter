import 'package:flutter/material.dart';
import 'package:octo_teacher_app/pages/LandingScreen.dart';
import 'package:octo_teacher_app/pages/Login2.dart';
import 'package:octo_teacher_app/pages/Widgets/Login/MidBar.dart';
import 'package:octo_teacher_app/pages/Widgets/Login/PhoneNumberInput.dart';
import 'package:octo_teacher_app/pages/Widgets/Login/TopBar.dart';

// MaterialApp(home: SafeArea(child: Scaffold(body: LandingScreen())))
//

class Login1 extends StatelessWidget {
  final color = const Color(0xff3030ED);
  final grey = const Color(0xffF4f4f4);
  final phoneNumberController = TextEditingController();
  String phoneNumber = "";

  Login1({phoneNumber}) {
    this.phoneNumber = phoneNumber;
    phoneNumberController.text = phoneNumber;
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;

    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                body: Container(
                    color: Colors.white,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TopBar(
                            BackPage: LandingScreen(),
                            fillArray: [true, false, false],
                          ),
                          MidBar(
                            smallText: "Let's Start",
                            bigText: "Please enter your mobile number",
                          ),
                          Expanded(
                              child: Container(
                            transform:
                                Matrix4.translationValues(0.0, -60.0, 0.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: Text(
                                        "Your mobile number",
                                        style: TextStyle(
                                            fontFamily: 'Epilogue',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            decoration: TextDecoration.none),
                                      )),
                                  PhoneNumberInput(
                                    type: Type.input,
                                    phoneNumber: phoneNumber,
                                    controller: phoneNumberController,
                                  ),
                                ]),
                          )),
                          Container(
                              margin: const EdgeInsets.only(
                                  left: 16.0, right: 16.0, bottom: 16.0),
                              width: double.infinity,
                              height: 56,
                              decoration: BoxDecoration(
                                  color: color,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                              child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: TextButton(
                                      onPressed: () {
                                        if (phoneNumberController.text.length ==
                                            10) {
                                          //dispatch login action

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Login2(
                                                      phoneNumber:
                                                          phoneNumberController
                                                              .text,
                                                    )),
                                          );
                                        }
                                      },
                                      child: Center(
                                          child: Directionality(
                                              textDirection: TextDirection.ltr,
                                              child: Text(
                                                'Next',
                                                style: TextStyle(
                                                    fontFamily: 'Epilogue',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none),
                                              ))))))
                        ])))));
  }
}
