import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaddingExample extends StatefulWidget {
  const PaddingExample({super.key});

  @override
  State<PaddingExample> createState() => _PaddingExampleState();
}

class _PaddingExampleState extends State<PaddingExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("padding"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: new Text(
            "element 1",
          ),
        ),
      ),
    );
  }
}
