import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:octo_teacher_app/pages/Login1.dart';
import 'package:flutter_redux/flutter_redux.dart';

enum Type { input, display }

class PhoneNumberInput extends StatelessWidget {
  final color = const Color(0xff3030ED);
  final grey = const Color(0xffF4f4f4);

  final Type type;
  final String phoneNumber;
  final controller;

  PhoneNumberInput(
      {required this.type, required this.phoneNumber, this.controller});

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    if (type == Type.input) {
      return Container(
          height: 56.0,
          color: grey,
          margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 12.0),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 24.0),
                  width: (c_width * 0.2 - 24.0),
                  child: Text("+91")),
              Container(
                  width: (c_width * 0.8 - 24.0),
                  child: TextFormField(
                    controller: controller,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ))
            ],
          ));
    } else if (type == Type.display) {
      return Container(
          height: 56.0,
          color: grey,
          margin: const EdgeInsets.only(left: 24.0, right: 24.0, top: 12.0),
          child: Row(
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 24.0),
                  width: (c_width * 0.2 - 24.0),
                  child: Text("+91")),
              Expanded(
                  child: Container(
                      width: (c_width * 0.8 - 24.0), child: Text(phoneNumber))),
              Container(
                  child: IconButton(
                color: color,
                padding: const EdgeInsets.all(0),
                icon: Image.asset(
                  'assets/icons/edit.png',
                  width: 18,
                  height: 18,
                  fit: BoxFit.contain,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login1()),
                  );
                },
              ))
            ],
          ));
    } else
      return Container();
  }
}
