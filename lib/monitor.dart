import 'package:flutter/material.dart';
import 'package:migarden/detail_monitor.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MonitorAir extends StatelessWidget {
  MonitorAir({Key? key, required this.title, required this.value})
      : super(key: key);

  String title;
  int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          child: SfRadialGauge(
            title: GaugeTitle(text: title),
            axes: <RadialAxis>[
              RadialAxis(
                canScaleToFit: true,
                minimum: 0,
                maximum: 100,
                interval: 10,
                ranges: <GaugeRange>[
                  GaugeRange(startValue: 0, endValue: 30, color: Colors.green),
                  GaugeRange(
                      startValue: 30, endValue: 65, color: Colors.orange),
                  GaugeRange(startValue: 65, endValue: 100, color: Colors.red),
                ],
                pointers: <GaugePointer>[
                  NeedlePointer(value: value.toDouble(), enableAnimation: true)
                ],
                annotations: <GaugeAnnotation>[
                  GaugeAnnotation(
                    widget: Text(
                      value.toString(),
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    angle: 100,
                  )
                ],
              )
            ],
          ),
        ),
        // TextButton(
        //     onPressed: () {
        //       Navigator.push(context, MaterialPageRoute(builder: (context) {
        //         return DetailMonitor();
        //       }));
        //     },
        //     child: const Text("Lihat Detail"))
      ],
    );
  }
}
