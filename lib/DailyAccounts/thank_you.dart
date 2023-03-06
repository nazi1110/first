import 'package:flutter/material.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({super.key});

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('THANK YOU'),
      content: Text('You have Register Successful '),
    );
    // body: Container(
    //   decoration: BoxDecoration(color: Colors.amber),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       SizedBox(
    //         height: 20,
    //       ),
    //       Container(
    //         alignment: Alignment.center,
    //         decoration: BoxDecoration(),
    //         child: Text(
    //           "THANK YOU ",
    //           style: TextStyle(
    //               fontSize: 30,
    //               color: Colors.white,
    //               fontWeight: FontWeight.bold),
    //         ),
    //       ),
    //       Text("You have Register Successful ")
    //     ],
    //   ),
    // ),
  }
}
