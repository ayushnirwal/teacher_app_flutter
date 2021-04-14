import 'package:flutter/material.dart';
import 'package:octo_teacher_app/redux/AppReducer.dart';
import 'package:octo_teacher_app/redux/AppState.dart';
import 'package:octo_teacher_app/redux/Stores/UserStore/UserState.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'pages/LandingScreen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';

// One simple action: Increment

void main() {
  final initialAppState = new AppState(userState: new UserState.initial());
  final store = Store<AppState>(appReducer,
      initialState: initialAppState,
      middleware: [thunkMiddleware, new LoggingMiddleware.printer()]);

  runApp(App(
    title: 'Flutter Redux Demo',
    store: store,
  ));
}

class App extends StatelessWidget {
  final Store<AppState> store;
  final String title;

  App({Key? key, required this.store, required this.title}) : super(key: key);
  final color = const Color(0xff3030ED);
  @override
  Widget build(BuildContext context) {
    // The StoreProvider should wrap your MaterialApp or WidgetsApp. This will
    // ensure all routes have access to the store.
    return StoreProvider<AppState>(
      // Pass the store to the StoreProvider. Any ancestor `StoreConnector`
      // Widgets will find and use this value as the `Store`.
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark(),
        title: title,
        home: Scaffold(
          body: Center(child: LandingScreen()),
        ),
      ),
    );
  }
}
