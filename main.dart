import 'package:flutter/material.dart';

// Simple Calculator
// Author: Tamara Alilovic

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double total = 0;
  List<String> seq = [];
  String input = "";
  bool disableButton = true;

  void click0() {
    setState(() {
      input = input + "0";
      disableButton = false;
    });
  }

  void click1() {
    setState(() {
      input = input + "1";
      disableButton = false;
    });
  }

  void click2() {
    setState(() {
      input = input + "2";
      disableButton = false;
    });
  }

  void click3() {
    setState(() {
      input = input + "3";
      disableButton = false;
    });
  }

  void click4() {
    setState(() {
      input = input + "4";
      disableButton = false;
    });
  }
  
  void click5() {
    setState(() {
      input = input + "5";
      disableButton = false;
    });
  }

  void click6() {
    setState(() {
      input = input + "6";
      disableButton = false;
    });
  }

  void click7() {
    setState(() {
      input = input + "7";
      disableButton = false;
    });
  }

  void click8() {
    setState(() {
      input = input + "8";
      disableButton = false;
    });
  }

  void click9() {
    setState(() {
      input = input + "9";
      disableButton = false;
    });
  }

  void clickDiv() {
    setState(() {
      input = input + " / ";
      disableButton = true;
    });
  }

  void clickMul() {
    setState(() {
      input = input + " * ";
      disableButton = true;
    });
  }

  void clickAdd() {
    setState(() {
      input = input + " + ";
      disableButton = true;
    });
  }

  void clickSub() {
    setState(() {
      input = input + " - ";
      disableButton = true;
    });
  }
  
  void clear() {
    setState(() {
      total = 0;
      input = "";
    });
  }

  void add(num1, num2) {
    setState(() {
      total = double.parse(num1) + double.parse(num2);
    });
  }

   void subtract(num1, num2) {
    setState(() {
      total = double.parse(num1) - double.parse(num2);
    });
  }

   void divide(num1, num2) {
    setState(() {
      total = double.parse(num1) / double.parse(num2);
    });
  }

   void multiply(num1, num2) {
    setState(() {
      total = double.parse(num1) * double.parse(num2);
    });
  }
  
  void equals() {
    setState(() {
      seq = input.split(" ");
      for (var i = 0; i < seq.length; i++) {
        if (seq[i] == '+') {
          add(seq[i-1], seq[i+1]);
        }
        if (seq[i] == '-') {
          subtract(seq[i-1], seq[i+1]);
        }
        if (seq[i] == '/') {
          divide(seq[i-1], seq[i+1]);
        }
        if (seq[i] == '*') {
          multiply(seq[i-1], seq[i+1]);
        }
      }
      input = input + " = "+ total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
                //crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                    new Text(
                      "$input",
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500
                        ),
                    )
                  ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
                //crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                    new ElevatedButton(
                      child: Text("Clear",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: clear,
                      style: ElevatedButton.styleFrom(
                        //primary: Colors.grey,
                        //onPrimary: Colors.white,
                        //shadowColor: Colors.black,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(235, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("/",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: disableButton ? null : clickDiv,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                  ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
                //crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                    new ElevatedButton(
                      child: Text("7",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click7,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("8",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click8,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("9",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click9,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("*",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: disableButton ? null : clickMul,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                  ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
                //crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                    new ElevatedButton(
                      child: Text("4",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click4,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("5",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click5,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("6",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click6,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("-",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: disableButton ? null : clickSub,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                  ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
                //crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                    new ElevatedButton(
                      child: Text("1",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click1,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("2",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click2,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("3",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click3,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("+",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: disableButton ? null : clickAdd,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                  ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, //Center Row contents horizontally,
                //crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                children: [
                    new ElevatedButton(
                      child: Text("0",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: click0,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(70, 70),
                      ),
                    ),
                    new ElevatedButton(
                      child: Text("=",
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w500
                          ),),
                      onPressed: equals,
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        fixedSize: Size(235, 70),
                      ),
                    ),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
