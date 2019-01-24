import 'package:flutter/material.dart';
import 'package:flutter_app/screens/IndexScreen.dart';
import 'package:flutter_app/screens/Counter/index.dart';
import 'package:flutter_app/screens/@register/index.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/counter": (BuildContext context) => Counter(),
    "/register": (BuildContext context) => Register()
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter App",
      home: IndexScreen(),
      routes: routes,
    ));
  }
}
