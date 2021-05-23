import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  // Array of button
  String userInput = '';
  String result = '0';
  final List<String> buttons = [
    'C',
    '+/-',
    '%',
    'DEL',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    'x',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    margin:  EdgeInsets.only(left: 10,right: 5,top: 30),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                        border: Border.all(color: Colors.blueAccent)
                    ),
                    child: Align(alignment: Alignment.centerLeft,child: Text(userInput,style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ),
                Container(
                    height: 80,
                    margin:  EdgeInsets.only(top: 30),
                    padding: EdgeInsets.all(10),
                    child: Align( alignment: Alignment.center,child: Text("="))),
                Container(
                  height: 80,
                  width: 70,
                  margin:  EdgeInsets.only(left: 10,right: 10,top: 30),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      border: Border.all(color: Colors.blueAccent)
                  ),
                  child: Align(alignment: Alignment.center,child: Text(result,style: TextStyle(fontWeight: FontWeight.bold),)),

                )
              ],

            ),
            Container(
              alignment: Alignment.center,
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10),

                  itemCount: buttons.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () => {
                        this.setState(() {
                     //     userInput = buttons[index];
                          onClick(index);
                        }),

                      

                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(buttons[index]),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    );
                  }),
            ),
          ],
        ),

      ),
    );

  }
  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void showMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueAccent,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void onClick(int index){
    // Clear Button
    if (index == 0) {
      userInput = '';
      result = '0';
    }

    // +/- button
    else if (index == 1) {
      showMessage("soon ;");
    }
    // % Button
    else if (index == 2) {

        userInput += buttons[index];

    }
    // Delete Button
    else if (index == 3) {

        userInput =
            userInput.substring(0, userInput.length - 1);

    }
    // Equal_to Button
    else if (index == 18) {

        equalPressed();

    }

    //  other buttons
    else {

        userInput += buttons[index];

    }
// function to calculate the input operation

  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    result = eval.toString();
  }




}
