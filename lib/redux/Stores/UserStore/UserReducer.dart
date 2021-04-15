import 'package:octo_teacher_app/redux/Stores/UserStore/UserActionTypes.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserState.dart';

UserState userReducer(UserState state, dynamic action) {
  switch (action.runtimeType) {
    case PhoneNumberInputActionType:
      return state.copyWith(phoneNumber: action.phoneNumber);
    case OtpInputActionType:
      return state.copyWith(otp: action.otp);
    case OtpVerificationActionType:
      return state.copyWith(otp: "");
    case ProfileSelectionActionType:
      return state.copyWith(profileType: action.profileType);

    default:
      return state;
  }
}
