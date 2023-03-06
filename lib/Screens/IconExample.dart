import 'package:flutter/material.dart';

class IconExample extends StatefulWidget {
  const IconExample({super.key});

  @override
  State<IconExample> createState() => _IconExampleState();
}

class _IconExampleState extends State<IconExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Example"),
      ),
      body: Center(
          child: Icon(
        Icons.add,
        size: 34.0,
      )),
    );
  }
}
