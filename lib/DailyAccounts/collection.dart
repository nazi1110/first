import 'package:flutter/material.dart';

import 'Widgets/searchbar.dart';

class Collection extends StatefulWidget {
  const Collection({super.key});

  @override
  State<Collection> createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("MY COLLECTION"),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ],
        ),
      ),
      body: Container(
        //color: Colors.grey,
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            _box(),

            SearchBar(),
            __najira("Aeshah", "Date", "5000", "you will get"),
            __najira("Ram", "Date", "200", "you will get"),
            __najira("Naveyshree", "Date", "300", "you will get"),
            __najira("Archita", "Date", "1000", "you will get")
            // Expanded(
            //     child: ListView.builder(
            //         itemCount: 20,
            //         itemBuilder: (context, index) {
            //           return Padding(
            //             padding: const EdgeInsets.symmetric(
            //                 horizontal: 20, vertical: 10),
            //             child: Container(
            //               width: MediaQuery.of(context).size.width,
            //               padding: EdgeInsets.symmetric(
            //                   horizontal: 20, vertical: 15),
            //               decoration: BoxDecoration(
            //                 color: Color.fromARGB(255, 209, 204, 204),
            //                 border: Border.all(color: Colors.grey),
            //                 borderRadius: BorderRadius.circular(10),
            //               ),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 children: [
            //                   Container(
            //                     height: 60,
            //                     width: 60,
            //                     decoration: BoxDecoration(
            //                       shape: BoxShape.circle,
            //                       //color: Colors.amber,
            //                       border: Border.all(color: Colors.black),
            //                     ),
            //                   ),
            //                   Expanded(
            //                     child: Container(
            //                       padding: EdgeInsets.only(left: 20),
            //                       child: Row(
            //                         mainAxisAlignment:
            //                             MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Column(
            //                             children: [
            //                               Text("My Debit "),
            //                               SizedBox(height: 10.0),
            //                               Text("1 day ago "),
            //                             ],
            //                           ),
            //                           Column(
            //                             children: [
            //                               Text("\$31,000 "),
            //                               SizedBox(height: 10.0),
            //                               Text("You'll Get"),
            //                             ],
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           );
            //         }))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Add customer'),
        icon: const Icon(Icons.person_add),
        backgroundColor: Colors.pink,
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.person),
          ),
        ],
        onTap: (int itemIndex) {
          setState(() {});
        },
      ),
    );
  }

  Widget _box() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: 80,
          margin: const EdgeInsets.only(left: 5.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.red),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "You Will Give \n \$46,000",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
        Container(
          height: 80,
          margin: const EdgeInsets.only(left: 5.0),
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.green),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "You Will Get \n \$32,500",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
      ],
    );
  }

  Widget __najira(String heading, String date, String money, String youwill) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 209, 204, 204),
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //color: Colors.amber,
                border: Border.all(color: Colors.black),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(heading),
                        SizedBox(height: 10.0),
                        Text(date),
                      ],
                    ),
                    Column(
                      children: [
                        Text(money),
                        SizedBox(height: 10.0),
                        Text(youwill),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//  Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 209, 204, 204),
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         //color: Colors.amber,
//                         border: Border.all(color: Colors.black),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 Text("My Debit "),
//                                 SizedBox(height: 10.0),
//                                 Text("1 day ago "),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Text("\$31,000 "),
//                                 SizedBox(height: 10.0),
//                                 Text("You'll Get"),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20, vertical: 0.1),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 209, 204, 204),
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: Colors.black),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 Text("My Debit "),
//                                 SizedBox(height: 10.0),
//                                 Text("2 day ago "),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Text(
//                                   "\$ 31,000 ",
//                                 ),
//                                 SizedBox(height: 10.0),
//                                 Text("You'll Get "),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                 decoration: BoxDecoration(
//                   color: Color.fromARGB(255, 209, 204, 204),
//                   border: Border.all(color: Colors.grey),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: Colors.black),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               children: [
//                                 Text("My Debit "),
//                                 SizedBox(height: 10.0),
//                                 Text("5 day ago "),
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 Text(
//                                   "\$ 46,000 ",
//                                 ),
//                                 SizedBox(height: 10.0),
//                                 Text("You'll Give "),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
          