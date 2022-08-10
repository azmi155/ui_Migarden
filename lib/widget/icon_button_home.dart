import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IconButtonHome extends StatelessWidget {
  const IconButtonHome(
      {Key? key,
      required this.icon,
      required this.color,
      required this.onPress})
      : super(key: key);

  final Widget icon;
  final Color color;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPress();
      },
      style: ElevatedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
      ),
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: 2, color: color)),
        child: icon,
      ),
    );
  }
}
