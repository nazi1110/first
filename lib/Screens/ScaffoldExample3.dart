import 'package:flutter/material.dart';

class ScaffoldExample3 extends StatefulWidget {
  const ScaffoldExample3({super.key});

  @override
  State<ScaffoldExample3> createState() => _ScaffoldExample3State();
}

class _ScaffoldExample3State extends State<ScaffoldExample3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome page"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              child: Text(
                "welcome",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              title: Text('phone'),
              leading: Icon(Icons.phone),
            ),
            ListTile(
              title: Text('mail'),
              leading: Icon(Icons.mail),
            ),
            ListTile(
              title: Text('meassage'),
              leading: Icon(Icons.message_sharp),
            ),
            Divider(
              height: 0.4,
            ),
            ListTile(
              title: Text('mail'),
              leading: Icon(Icons.mail),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 8,
        child: Icon(Icons.add),
        onPressed: (() {
          print("floatingActionButton");
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "home", icon: Icon(Icons.home))
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text("Hello"),
          ),
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
          )
        ],
      ),
    );
  }
}
