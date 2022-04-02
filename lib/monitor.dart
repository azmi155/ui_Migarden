import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MonitorAir extends StatelessWidget {
  const MonitorAir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfRadialGauge(
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
                widget: Text(
                  "90.0",
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                // positionFactor: 0.5,
                angle: 90,
              )
            ],
            //axisLabelStyle: GaugeTextStyle()
            //majorTickStyle: const MajorTickStyle(length: )
          )
        ],
      ),
    );
  }
}
