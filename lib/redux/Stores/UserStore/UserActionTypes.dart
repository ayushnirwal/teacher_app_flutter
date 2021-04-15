import 'package:octo_teacher_app/redux/Stores/UserStore/UserState.dart';

class PhoneNumberInputActionType {
  final phoneNumber;
  PhoneNumberInputActionType({required this.phoneNumber});
}

class OtpInputActionType {
  final otp;
  OtpInputActionType({required this.otp});
}

class OtpVerificationActionType {}

class ProfileSelectionActionType {
  final ProfileType profileType;
  ProfileSelectionActionType({required this.profileType});
}
