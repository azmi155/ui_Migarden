import 'package:flutter/material.dart';
import 'package:migarden/detail_monitor.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MonitorAir extends StatefulWidget {
  MonitorAir({Key? key, required this.title});
  final String title;
  @override
  State<MonitorAir> createState() => _MonitorAirState();
}

class _MonitorAirState extends State<MonitorAir> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: SfRadialGauge(
            title: GaugeTitle(text: widget.title),
            axes: <RadialAxis>[
              RadialAxis(
                canScaleToFit: true,
                minimum: 0,
                maximum: 15,
                interval: 1,
                ranges: <GaugeRange>[
                  GaugeRange(startValue: 0, endValue: 5, color: Colors.green),
                  GaugeRange(startValue: 5, endValue: 10, color: Colors.orange),
                  GaugeRange(startValue: 10, endValue: 15, color: Colors.red),
                ],
                pointers: <GaugePointer>[
                  NeedlePointer(value: 5, enableAnimation: true)
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: const Text(
                      "90.0",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    angle: 90,
                  )
                ],
              )
            ],
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailMonitor();
              }));
            },
            child: const Text("Lihat Detail"))
      ],
    );
  }
}
