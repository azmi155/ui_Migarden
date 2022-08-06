import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:migarden/widget/icon_button_home.dart';

class ActionHome extends StatefulWidget {
  const ActionHome({Key? key}) : super(key: key);

  @override
  State<ActionHome> createState() => _ActionHomeState();
}

class _ActionHomeState extends State<ActionHome> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const IconButtonHome(
          icon: Icon(
            Icons.notifications_none_outlined,
            color: Colors.blue,
          ),
        ),
        const IconButtonHome(
          icon: Icon(
            Icons.power_settings_new_outlined,
            color: Colors.blue,
          ),
        ),
        const IconButtonHome(
          icon: Text(
            "AI",
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        const IconButtonHome(
          icon: Icon(
            Icons.wifi_tethering,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
