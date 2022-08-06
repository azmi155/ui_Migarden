import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class DetailMonitor extends StatefulWidget {
  const DetailMonitor({Key? key}) : super(key: key);

  @override
  State<DetailMonitor> createState() => _DetailMonitorState();
}

class _DetailMonitorState extends State<DetailMonitor> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Indicaor"),
      ),
      body: Container(
        child: SfSparkLineChart(
            data: <double>[10, 6, 8, -5, 11, 5, -2, 7, -3, 6, 8, 10]),
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
