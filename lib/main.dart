import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Calculator());
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(
        child: ElevatedButton(
            onPressed: () {
              //TODO: Add function for button pressed
            },
            child: Text(
              btntxt,
              style: TextStyle(color: txtcolor, fontSize: 35),
            ),
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0))))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //display
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '0',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 100),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //button functions
                calcbutton('AC', Colors.grey, Colors.black)
              ],
            )
          ],
        ),
      ),
    );
  }
}
