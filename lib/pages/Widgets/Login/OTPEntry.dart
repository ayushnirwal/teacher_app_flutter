import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPEntry extends StatefulWidget {
  @override
  _OTPEntryState createState() => _OTPEntryState();
}

class _OTPEntryState extends State<OTPEntry> {
  final double height = 66;

  final double width = 66;

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
          height: height,
          width: c_width,
          margin: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: PinCodeTextField(
            animationType: AnimationType.none,
            useHapticFeedback: true,
            appContext: context,
            length: 4,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: width,
              fieldWidth: height,
              activeFillColor: Color(0xffF4f4f4),
              inactiveFillColor: Color(0xffF4f4f4),
              selectedFillColor: Color(0xffF4f4f4),
              activeColor: Color(0xffF4f4f4),
              inactiveColor: Color(0xffF4f4f4),
              selectedColor: Color(0xffF4f4f4),
            ),
            enableActiveFill: true,
            onCompleted: (value) {
              //verify OTP
              if (value == "1234") {
                print("verified");
              }
            },
            onChanged: (value) {},
          )),
    );
  }
}
