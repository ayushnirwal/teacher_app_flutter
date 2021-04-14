import 'package:octo_teacher_app/redux/AppState.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserActionTypes.dart';
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

    store.dispatch(new PhoneNumberInputAction(phoneNumber: delayedPhoneNumber));
  };
}
