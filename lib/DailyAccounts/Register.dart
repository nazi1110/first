// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfristapp/String.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String Firstname = "";
  final _firstnamecontroller = new TextEditingController();
  String lastname = "";
  final _lastnamecontroller = new TextEditingController();
  String bussinessname = "";
  final _businessnamecontroller = new TextEditingController();
  String email = "";
  final _emailcontroller = new TextEditingController();
  String password = "";
  final _passwordcontroller = new TextEditingController();
  String conformpassword = "";
  final _confrompasswordcontroller = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
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
                      AppStrings.create_account,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                    Text(
                      AppStrings.enter_detail,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700], fontSize: 15),
                    ),
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
                            AppStrings.first_name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: _firstnamecontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                Firstname = value;
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
                              hintText: AppStrings.enter_first,
                            ),
                          ),
                          Text(
                            AppStrings.last_name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _lastnamecontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                lastname = value;
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
                              hintText: AppStrings.enter_last,
                            ),
                          ),
                          Text(
                            AppStrings.bussiness_name,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _businessnamecontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                bussinessname = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your bussiness name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: AppStrings.enter_business,
                            ),
                          ),
                          Text(
                            AppStrings.email,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: _emailcontroller,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: ((value) {
                              setState(() {
                                email = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your email';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: AppStrings.enter_email),
                          ),
                          Text(
                            AppStrings.password,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            controller: _passwordcontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                password = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              // hintText: 'enter your password'
                            ),
                          ),
                          Text(
                            AppStrings.confirm_pass,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            controller: _confrompasswordcontroller,
                            keyboardType: TextInputType.name,
                            onChanged: ((value) {
                              setState(() {
                                conformpassword = value;
                              });
                            }),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Enter your conform password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              // hintText: 'conform password'
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: ElevatedButton(
                              child: Text(
                                AppStrings.Register,
                                style: TextStyle(fontSize: 20.0),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // If the form is valid, display a Snackbar.
                                  print(_firstnamecontroller.text);
                                  print(_lastnamecontroller.text);
                                  print(_businessnamecontroller.text);
                                  print(_emailcontroller.text);
                                  print(_passwordcontroller.text);
                                  print(_confrompasswordcontroller.text);
                                }
                              },
                            ),
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
