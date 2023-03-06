import 'package:flutter/material.dart';

class Mydebibt1 extends StatefulWidget {
  const Mydebibt1({super.key});

  @override
  State<Mydebibt1> createState() => _Mydebibt1State();
}

class _Mydebibt1State extends State<Mydebibt1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text("MY NAME"),
            SizedBox(
              width: 230,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Container(
        //  color: Colors.amber,
        child: Column(children: [
          Container(
            height: 80,
            margin: const EdgeInsets.only(left: 5.0),
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.red),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "You Will Give,  \$46,000",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
          //
        ]),
      ),
    );
  }
}
