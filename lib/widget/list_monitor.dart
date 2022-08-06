import 'package:flutter/material.dart';
import 'package:migarden/monitor.dart';

class ListMonitor extends StatefulWidget {
  const ListMonitor({Key? key}) : super(key: key);

  @override
  State<ListMonitor> createState() => _ListMonitorState();
}

class _ListMonitorState extends State<ListMonitor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
              child: Card(
                  child: MonitorAir(
            title: "PH",
          ))),
          Expanded(
              child: Card(
                  child: MonitorAir(
            title: "SUHU AIR",
          ))),
        ]),
        Row(children: [
          Expanded(
              child: Card(
                  child: MonitorAir(
            title: "kelembapan",
          ))),
          Expanded(
              child: Card(
                  child: MonitorAir(
            title: "banyak air",
          ))),
        ])
      ],
    );
  }
}
