import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

String email = "";
final _emailController = new TextEditingController();
String password = "";
final _passwordController = new TextEditingController();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sign up"),
      ),
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email Address",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                //child: const Text(
                //"email Address"),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    //labelText: 'email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    Container(
                      //padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          //labelText: 'Password',
                          // filled: true,
                          // fillColor: Colors.grey,
                          // icon: const Padding(
                          // padding: const EdgeInsets.only(top: 15.0),
                          //child: const Icon(Icons.remove_red_eye),
                          // ),
                          border: OutlineInputBorder(),

                          //labelText: 'Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Password",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Container(
                            //padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                //labelText: 'Password',
                                // filled: true,
                                // fillColor: Colors.grey,
                                // icon: const Padding(
                                // padding: const EdgeInsets.only(top: 15.0),
                                //child: const Icon(Icons.remove_red_eye),
                                // ),
                                border: OutlineInputBorder(),

                                //labelText: 'Password',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
