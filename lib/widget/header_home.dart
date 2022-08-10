import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:format_indonesia/format_indonesia.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({Key? key}) : super(key: key);
  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0))),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20.0, left: 20.0),
            alignment: Alignment.topLeft,
            child: new Icon(
              Icons.ac_unit_sharp,
              size: 30,
              color: Colors.white,
            ),
          ),
          Container(
            child: Text(
              "00",
              style: TextStyle(fontSize: 80, color: Colors.white),
            ),
          ),
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 30)),
                    Text(
                      "0",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 30)),
                    Text("C",
                        style: TextStyle(fontSize: 35, color: Colors.white))
                  ],
                )
              ],
            ),
          ),
          Container(
              child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 10)),
              Text(
                "00",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          )),
          Container(
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 5)),
                    Container(
                      child: new Text(
                        "0",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 5)),
                    Container(
                      child: new Text(
                        "F",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 30)),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text(
                                "Humadity",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Container(
                              child: Row(children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.water,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "00%",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ],
                                )
                              ]),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text(
                                    Waktu(DateTime.now()).EEEE(),
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    Waktu(DateTime.now()).yMMMd(),
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
