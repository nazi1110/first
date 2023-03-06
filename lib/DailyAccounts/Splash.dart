import 'package:flutter/material.dart';
import 'package:myfristapp/Asset%20Code/logo.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 255, 213, 200),
            Colors.white,
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AssetLogo(),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(),
              child: Text(
                "Daily Account Book",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xffE95229),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                child: Text(
                  " Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
