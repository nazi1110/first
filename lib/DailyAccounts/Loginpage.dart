import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String Username = "";
  final _UsernameController = new TextEditingController();
  String password = "";
  final _passwordController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Center(
                  child: Container(
                    width: 400,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    //child: Image.asset('assets/img/1.png'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 210),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(left: 30.0),
                        padding: const EdgeInsets.all(0.8),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                        padding: const EdgeInsets.all(0.8),
                        margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Divider(
                          color: Colors.black,
                          height: 20,
                        )),
                    Container(
                      child: Padding(
                        //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          controller: _UsernameController,
                          onChanged: ((value) {
                            setState(() {
                              Username = value;
                            });
                          }),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter your username';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              // border: OutlineInputBorder(),
                              labelText: 'Username',
                              hintText: 'Enter your Username'),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15, bottom: 0),
                        //padding: EdgeInsets.symmetric(horizontal: 15),
                        child: TextField(
                          keyboardType: TextInputType.name,
                          obscureText: true,
                          controller: _passwordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                              ),
                              labelText: 'Password',
                              hintText: 'Enter secure password'),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //TODO FORGOT PASSWORD SCREEN GOES HERE
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                      //child: TextButton(
                      //onPressed: () {
                      // Navigator.push(
                      //  context, MaterialPageRoute(builder: (_) => LoginPage()));
                      //  },
                      child: Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
