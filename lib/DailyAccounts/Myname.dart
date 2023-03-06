import 'package:flutter/material.dart';

class Myname extends StatefulWidget {
  const Myname({super.key});

  @override
  State<Myname> createState() => _MynameState();
}

class _MynameState extends State<Myname> {
  String Amount = "";
  final _Amountcontroller = new TextEditingController();
  String Description = "";
  final _Descriptioncontroller = new TextEditingController();
  String Date = "";
  final _Datecontroller = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    //SizedBox(
                    //height: 30,
                    //),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: SingleChildScrollView(
                        child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amount:",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: _Amountcontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                Amount = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your Amount';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'enter Amount',
                            ),
                          ),
                          Text(
                            "Description:",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _Descriptioncontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                Description = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter description';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'enter description',
                            ),
                          ),
                          Text(
                            "Date:",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _Datecontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                Date = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter date';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'enter Date',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.38,
                                padding: EdgeInsets.symmetric(vertical: 15),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Save",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width * 0.38,
                                padding: EdgeInsets.symmetric(vertical: 15),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "Cancle",
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
