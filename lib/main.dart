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
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.home,
            color: Colors.blue,
          ),
          title: const Center(
            child: Text(
              "Smart Garden >>",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          actions: const <Widget>[Icon(Icons.home, color: Colors.blue)],
        ),
        body: const Dashboard());
  }
}
