import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

String email = "";
final _emailController = new TextEditingController();
String password = "";
final _passwordController = new TextEditingController();

final _formKey = GlobalKey<FormState>();

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _formKey,
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Lets Sign you In',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'To Continue, first Verify that its You',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
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
                          TextButton(
                            onPressed: () {
                              //forgot password screen
                            },
                            child: const Text(
                              'Forgot Password',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Container(
              //     height: 50,
              //     width: 1000,
              //     //decoration: const BoxDecoration(
              //     //borderRadius: BorderRadius.all(Radius.circular(100)),
              //     //),
              //    // padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              //     child: ElevatedButton(
              //       child: const Text('Sing In',
              //           style: TextStyle(
              //             fontSize: 20,
              //             color: Colors.white,
              //           )),
              //       style: ButtonStyle(
              //           foregroundColor: MaterialStateProperty.all<Color>(
              //               Colors.blueAccent),
              //           backgroundColor: MaterialStateProperty.all<Color>(
              //               Colors.blueAccent),
              //           shape:
              //               MaterialStateProperty.all<RoundedRectangleBorder>(
              //                   RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(15),
              //             side: BorderSide(color: Colors.blueAccent),
              //           ))),
              //       onPressed: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (BuildContext context) => Register2()),
              //         );

              //         print(_emailController.text);
              //         print(_passwordController.text);
              //       },
              //     )),

              Column(
                children: <Widget>[
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Row(
                  children: <Widget>[
                    const Text(
                      'Does not have account?',
                      textAlign: TextAlign.end,
                    ),
                    TextButton(
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ));
  }
}
