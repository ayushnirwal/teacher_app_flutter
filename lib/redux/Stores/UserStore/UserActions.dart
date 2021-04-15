import 'package:octo_teacher_app/redux/AppState.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserActionTypes.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserState.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> phoneNumberInputAction(
    String phoneNumber, int secondsToWait) {
  return (Store<AppState> store) async {
    final delayedPhoneNumber = await new Future.delayed(
      new Duration(seconds: secondsToWait),
      () {
        return phoneNumber;
      },
    );

    store.dispatch(
        new PhoneNumberInputActionType(phoneNumber: delayedPhoneNumber));
  };
}

ThunkAction<AppState> otpInputAction(String otp) {
  return (Store<AppState> store) async {
    store.dispatch(new OtpInputActionType(otp: otp));
  };
}

ThunkAction<AppState> otpVerificationAction() {
  return (Store<AppState> store) async {
    String phoneNumber = store.state.userState.phoneNumber;
    String otp = store.state.userState.otp;
    print("phonenumber $phoneNumber otp $otp");
    store.dispatch(new OtpVerificationActionType());
  };
}

ThunkAction<AppState> profileSelectionAction(ProfileType profileType) {
  return (Store<AppState> store) async {
    print(profileType);
    store.dispatch(new ProfileSelectionActionType(profileType: profileType));
  };
}
