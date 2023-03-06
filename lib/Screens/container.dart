import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {
  const ContainerExample({super.key});

  @override
  State<ContainerExample> createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 10),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green),
                  child: Text(
                    "Flutter1",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 10),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20)),
                      color: Colors.black),
                  child: Text(
                    "Flutter",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 10),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 10),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: Colors.pink),
                  child: Text(
                    "Flutter3",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 10),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 10),
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20)),
                      color: Colors.blueGrey),
                  child: Text(
                    "Flutter",
                    style: TextStyle(color: Colors.yellowAccent, fontSize: 10),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
