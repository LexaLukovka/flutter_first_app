import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Home/index.dart';
import 'package:flutter_app/screens/@register/index.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/home": (BuildContext context) => Home(),
    "/register": (BuildContext context) => Register()
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter App",
      home: Home(),
      routes: routes,
    ));
  }
}
