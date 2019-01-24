import 'package:flutter/material.dart';

class IndexScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          ButtonTheme(
            minWidth: 120,
            child: Column(children: [
              RaisedButton(
                child: Text(
                  'Counter',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                textTheme: ButtonTextTheme.primary,
                onPressed: () => Navigator.of(context).pushNamed("/counter"),
              ),
              RaisedButton(
                child: Text(
                  'Open route',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                textTheme: ButtonTextTheme.primary,
                onPressed: () => Navigator.of(context).pushNamed("/register"),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
