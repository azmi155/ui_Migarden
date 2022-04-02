import 'package:format_indonesia/format_indonesia.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'monitor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _switchVal = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            child: new Stack(
              children: [
                new Positioned(
                  child: Container(
                    margin: EdgeInsets.only(top: 30.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(80.0))),
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
                                  Padding(
                                      padding: const EdgeInsets.only(top: 30)),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 30)),
                                  Text("C",
                                      style: TextStyle(
                                          fontSize: 35, color: Colors.white))
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
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        )),
                        Container(
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 5)),
                                  Container(
                                    child: new Text(
                                      "0",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 5)),
                                  Container(
                                    child: new Text(
                                      "F",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(top: 30)),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            child: Text(
                                              "Humadity",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white),
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
                                                        fontSize: 20,
                                                        color: Colors.white),
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
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  Waktu(DateTime.now()).yMMMd(),
                                                  style: TextStyle(
                                                      color: Colors.white),
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
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 20)),
                new Positioned(
                  top: 140,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    margin: EdgeInsets.only(top: 30.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 200.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(75.0))),
                    child: new Row(
                      children: [
                        Padding(padding: const EdgeInsets.only(left: 10)),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 2, color: Colors.blue)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.notifications_none_outlined,
                                      color: Colors.blue,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 2, color: Colors.blue)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.power_settings_new_outlined,
                                      color: Colors.blue,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 2, color: Colors.blue)),
                                child: Row(
                                  children: [
                                    Text(
                                      "AI",
                                      style: TextStyle(
                                          color: Colors.blue, fontSize: 20),
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(20),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 2, color: Colors.blue)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.wifi_tethering,
                                      color: Colors.blue,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                new Positioned(
                  top: 280,
                  //height: 2000,
                  // left: 0,
                  // right: 0,
                  bottom: 10,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                      margin: EdgeInsets.only(top: 30.0),
                      padding: const EdgeInsets.all(10.0),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        children: [
                          Container(
                            child: new Card(
                                child: Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20)),
                                    MonitorAir()
                                  ],
                                ),
                              ),
                            )),
                          ),
                          Container(
                            child: new Card(
                                child: Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20)),
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.blue,
                                      size: 70,
                                    ),
                                    Text("Light"),
                                    Switch(
                                      onChanged: (bool value) {
                                        setState(() => this._switchVal = value);
                                      },
                                      value: this._switchVal,
                                    ),
                                    Text("ON"),
                                  ],
                                ),
                              ),
                            )),
                          ),
                          Container(
                            child: new Card(
                                child: Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20)),
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.blue,
                                      size: 70,
                                    ),
                                    Text("Light"),
                                    Switch(
                                      onChanged: (bool value) {
                                        setState(() => this._switchVal = value);
                                      },
                                      value: this._switchVal,
                                    ),
                                    Text("ON"),
                                  ],
                                ),
                              ),
                            )),
                          ),
                          Container(
                            child: new Card(
                                child: Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20)),
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.blue,
                                      size: 70,
                                    ),
                                    Text("Light"),
                                    Switch(
                                      onChanged: (bool value) {
                                        setState(() => this._switchVal = value);
                                      },
                                      value: this._switchVal,
                                    ),
                                    Text("ON"),
                                  ],
                                ),
                              ),
                            )),
                          ),
                          Container(
                            child: new Card(
                                child: Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20)),
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.blue,
                                      size: 70,
                                    ),
                                    Text("Light"),
                                    Switch(
                                      onChanged: (bool value) {
                                        setState(() => this._switchVal = value);
                                      },
                                      value: this._switchVal,
                                    ),
                                    Text("ON"),
                                  ],
                                ),
                              ),
                            )),
                          ),
                          Container(
                            child: new Card(
                                child: Center(
                              child: Container(
                                child: Column(
                                  children: [
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: 20)),
                                    Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.blue,
                                      size: 70,
                                    ),
                                    Text("Light"),
                                    Switch(
                                      onChanged: (bool value) {
                                        setState(() => this._switchVal = value);
                                      },
                                      value: this._switchVal,
                                    ),
                                    Text("ON"),
                                  ],
                                ),
                              ),
                            )),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
