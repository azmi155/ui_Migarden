import 'package:flutter/material.dart';
import 'package:migarden/dashboard.dart';

void main() {
  runApp(new MaterialApp(
    title: "SKRIPSHIT",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.home,
          color: Colors.blue,
        ),
        title: new Center(
          child: new Text(
            "Smart Garden >>",
            style: new TextStyle(color: Colors.blue),
          ),
        ),
        actions: <Widget>[new Icon(Icons.home, color: Colors.blue)],
      ),
      body: Dashboard()
    );
  }
}
