import 'package:flutter/material.dart';

class Addcustomer extends StatefulWidget {
  const Addcustomer({super.key});

  @override
  State<Addcustomer> createState() => _AddcustomerState();
}

class _AddcustomerState extends State<Addcustomer> {
  String Customername = "";
  final _Cutomernamecontroller = new TextEditingController();
  String CustomerAddress = "";
  final _CustomerAddressscontroller = new TextEditingController();
  String CustomermobileNo = "";
  final _CustomermobileNocontroller = new TextEditingController();

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
                      "Add Customer Here",
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
                            "Customer name:",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: _Cutomernamecontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                Customername = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your First name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'enter Customer name',
                            ),
                          ),
                          Text(
                            "Customer Address :",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _CustomerAddressscontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                CustomerAddress = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your last name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'enter Customer Address',
                            ),
                          ),
                          Text(
                            "Customer mobile No:",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _CustomermobileNocontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                CustomermobileNo = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter customer mobile No';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'enter  cutomer mobile No',
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
                                  "Confirm",
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
