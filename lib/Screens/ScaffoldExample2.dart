import 'package:flutter/material.dart';

class ScaffoldExample2 extends StatefulWidget {
  const ScaffoldExample2({super.key});

  @override
  State<ScaffoldExample2> createState() => _ScaffoldExample2State();
}

class _ScaffoldExample2State extends State<ScaffoldExample2> {
  get fixedColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scafflod example 2"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text(
                "welcome guys!!!",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text('1'),
            ),
            Divider(
              height: 0.2,
            ),
            Divider(
              height: 0.4,
            ),
            ListTile(
              title: Text('3'),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text('4'),
            ),
            Divider(
              height: 0.2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        child: Icon(Icons.add),
        onPressed: () {
          print("hello");
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "serch",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "user",
            icon: Icon(Icons.home),
          ),
        ],
        onTap: (int itemIndex) {
          setState(() {});
        },
      ),
      body: Center(
        child: Text(
          "welcome  all",
          style: TextStyle(color: Colors.blueGrey, fontSize: 40),
        ),
      ),
    );
  }
}
