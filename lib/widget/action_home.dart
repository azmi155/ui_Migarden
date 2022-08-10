import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:migarden/widget/icon_button_home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActionHome extends StatefulWidget {
  const ActionHome({Key? key}) : super(key: key);

  @override
  State<ActionHome> createState() => _ActionHomeState();
}

class _ActionHomeState extends State<ActionHome> {
  CollectionReference tools =
      FirebaseFirestore.instance.collection('mismartgarden');
  bool statusPower = false;
  void getToolsStatus() {
    tools.doc("statusESP").snapshots().listen((event) {
      final data = event.data() as Map<String, dynamic>;
      setState(() {
        statusPower = data['power'];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getToolsStatus();
  }

  void onControl() {
    tools.doc("statusESP").set({'power': !statusPower});
    setState(() {
      statusPower = !statusPower;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // const IconButtonHome(
        //   icon: Icon(
        //     Icons.notifications_none_outlined,
        //     color: Colors.blue,
        //   ),
        // ),
        IconButtonHome(
          icon: Icon(
            Icons.power_settings_new_outlined,
            color: statusPower ? Colors.green : Colors.red,
          ),
          color: statusPower ? Colors.green : Colors.red,
          onPress: () {
            onControl();
          },
        ),
        // const IconButtonHome(
        //   icon: Text(
        //     "AI",
        //     style: TextStyle(color: Colors.blue, fontSize: 20),
        //   ),
        // ),
        // const IconButtonHome(
        //   icon: Icon(
        //     Icons.wifi_tethering,
        //     color: Colors.blue,
        //   ),
        // ),
      ],
    );
  }
}
