import 'package:flutter/material.dart';

class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({super.key});

  @override
  State<ScaffoldExample> createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("scaffold example"),
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'Welcome to Javatpoint',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                  ),
                ),
              ),
              ListTile(
                title: Text('1'),
              ),
              ListTile(
                title: Text("All Mail Inboxes"),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 0.2,
              ),
              ListTile(
                title: Text("Primary"),
              ),
              ListTile(
                title: Text("Social"),
              ),
              ListTile(
                title: Text("Promotions"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            elevation: 8.0,
            child: Icon(Icons.add),
            onPressed: () {
              print('I am Floating Action Button');
            }),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "User Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int itemIndex) {
            setState(() {});
          },
        ),
        body: Center(
          child: Text(
            "welcome flutter Application",
            style: TextStyle(color: Colors.black, fontSize: 30.0),
          ),
        ));
  }
}
