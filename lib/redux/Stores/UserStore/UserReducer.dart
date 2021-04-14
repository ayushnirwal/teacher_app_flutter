import 'package:octo_teacher_app/redux/Stores/UserStore/UserActionTypes.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserState.dart';

UserState userReducer(UserState state, dynamic action) {
  switch (action.runtimeType) {
    case PhoneNumberInputAction:
      return state.copyWith(phoneNumber: action.phoneNumber);

    default:
      return state;
  }
}
