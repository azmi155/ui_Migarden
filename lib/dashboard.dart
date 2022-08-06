import 'package:format_indonesia/format_indonesia.dart';
import 'package:flutter/material.dart';
import 'package:migarden/widget/action_home.dart';
import 'package:migarden/widget/header_home.dart';
import 'package:migarden/widget/list_monitor.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'monitor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(bottom: 20),
      children: const [HeaderHome(), ActionHome(), ListMonitor()],
    );
  }
}
