import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:migarden/dashboard.dart';
import 'package:migarden/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SKRIPSHIT",
      home: Scaffold(
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
        body: Dashboard(),
      ),
    );
  }
}
