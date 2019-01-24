import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//        backgroundColor: Colors.black12,
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Counter:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(4.0),
                  child: RaisedButton(
                    disabledColor: Colors.red,
                    onPressed: _counter <= 0 ? null : _decrementCounter,
                    child: Icon(Icons.remove),
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),
                  padding: EdgeInsets.all(4.0),
                ),
              ],
            ),
            RaisedButton(
              child: Text('Open route'),
              onPressed: () => Navigator.of(context).pushNamed("/register"),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
