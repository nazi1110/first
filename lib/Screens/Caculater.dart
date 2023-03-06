import 'package:flutter/material.dart';

class Caculater extends StatefulWidget {
  const Caculater({super.key});

  @override
  State<Caculater> createState() => _CaculaterState();
}

class _CaculaterState extends State<Caculater> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("00"),
          Visibility(child: Text("Hello")),
          Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("9"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("8"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("7"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("+"),
                      SizedBox(height: 5,width: 5,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("4"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("5"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("6"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("-"),
                      SizedBox(height: 5,width: 5,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("1"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("2"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("3"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("*"),
                      SizedBox(height: 5,width: 5,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("c"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("0"),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("="),
                      SizedBox(height: 5,width: 5,),
                      customOutlineButton("/"),
                      SizedBox(height: 5,width: 5,),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}

Widget customOutlineButton(String val) {
  return Expanded(
    child: ElevatedButton(
      //padding: EdgeInsets.all(25.0),
      onPressed: () => btnClicked(val),
      child: Text(
        val,
        style: TextStyle(fontSize: 35.0, color: Colors.deepOrange),
      ),
    ),
  );
}

int? first, second;
String? res, text = "";
String? opp;
void btnClicked(String btnText) {
  if (btnText == "C") {
    res = "";
    text = "";
    first = 0;
    second = 0;
  } else if (btnText == "+" ||
      btnText == "-" ||
      btnText == "x" ||
      btnText == "/") {
    first = int.parse(text.toString());
    res = "";
    opp = btnText;
  } else if (btnText == "=") {
    second = int.parse(text.toString());
    if (opp == "+") {
      res = (first! + second!).toString();
    }
    if (opp == "-") {
      res = (first! - second!).toString();
    }
    if (opp == "x") {
      res = (first! * second!).toString();
    }
    if (opp == "/") {
      res = (first! ~/ second!).toString();
    }
  } else {
    res = int.parse(text! + btnText).toString();
  }
}
