import 'package:flutter/material.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.black,
            height: 100,
          ),
          Container(
            color: Colors.amber,
            height: 100,
          ),
          Container(
            color: Colors.pinkAccent,
            height: 100,
          ),
          Container(
            color: Colors.yellowAccent,
            height: 100,
          ),
          Container(
            color: Colors.grey,
            height: 100,
          ),
          Container(
            color: Colors.lightGreen,
            height: 100,
          ),
          Container(
            color: Colors.redAccent,
            height: 100,
          ),
          Container(
            color: Colors.white,
            height: 100,
          ),
          Container(
            color: Colors.black,
            height: 100,
          ),
          Container(
            color: Colors.grey,
            height: 100,
          ),
        ],
      ),
    );
  }
}
