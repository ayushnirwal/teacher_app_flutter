import 'package:octo_teacher_app/redux/AppState.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserReducer.dart';

AppState appReducer(AppState state, dynamic action) => new AppState(
      userState: userReducer(state.userState, action),
    );
