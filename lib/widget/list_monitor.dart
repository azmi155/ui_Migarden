import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:migarden/monitor.dart';

class ListMonitor extends StatefulWidget {
  const ListMonitor({Key? key}) : super(key: key);

  @override
  State<ListMonitor> createState() => _ListMonitorState();
}

class _ListMonitorState extends State<ListMonitor> {
  CollectionReference tools =
      FirebaseFirestore.instance.collection('mismartgarden');

  int suhuArea = 0;
  int persentaseAir = 0;
  int ph = 0;
  int suhuAir = 0;

  void getDataSensor() {
    tools.doc("sensordata").snapshots().listen((event) {
      final data = event.data() as Map<String, dynamic>;
      setState(() {
        suhuArea = data['suhuArea'];
        persentaseAir = data['persentaseAir'];
        ph = data['ph'];
        suhuAir = data['suhuAir'];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getDataSensor();
    ph = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                int random = Random().nextInt(100);
                print(random);
                ph = random;
              });
            },
            child: Text("presss" + ph.toString())),
        Row(children: [
          Expanded(
              child: Card(
                  child: MonitorAir(
            title: "PH",
            value: ph,
          ))),
          Expanded(
              child:
                  Card(child: MonitorAir(title: "SUHU AIR", value: suhuAir))),
        ]),
        Row(children: [
          Expanded(
              child: Card(
                  child: MonitorAir(title: "kelembapan", value: suhuArea))),
          Expanded(
              child: Card(
                  child:
                      MonitorAir(title: "banyak air", value: persentaseAir))),
        ])
      ],
    );
  }
}
