import 'package:flutter/material.dart';
import 'package:flutter_app/model/index.dart';
import 'package:flutter_app/redux/reducers.dart';
import 'package:flutter_app/screens/@register/index.dart';
import 'package:flutter_app/screens/Counter/index.dart';
import 'package:flutter_app/screens/IndexScreen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class StoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var routes = <String, WidgetBuilder>{
      "/counter": (BuildContext context) => Counter(),
      "/register": (BuildContext context) => Register()
    };

    final Store<AppState> store = Store<AppState>(
      appStateReducer,
      initialState: AppState.initialState(),
    );

    return StoreProvider<AppState>(
      store: store,
      child: new MaterialApp(
        title: "Flutter App",
        home: IndexScreen(),
        routes: routes,
      ),
    );
  }
}
