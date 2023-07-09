import 'package:flutter/material.dart';

enum CalculatorButton {
  C,
  CHANGE_SIGN,
  PERCENT,
  DIVIDE,
  MULTIPLY,
  ADD,
  SUBTRACT,
  EQUAL,
  DOT
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {



  TextEditingController tffController = TextEditingController();

  int inputNumber = 0;
  int total = 0;
  int prevOperation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              textAlign: TextAlign.end,
              controller: tffController,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                border: InputBorder.none
              ),
              readOnly: true,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                ),
                children: [
                  FloatingActionButton(
                    backgroundColor: Color(0xffa5a5a5),
                    onPressed: (){
                      handleTopButtons(CalculatorButton.C);
                    },
                    shape: CircleBorder(),
                    child: Text(
                      "C",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0
                      ),
                    ),
                  ),  //C
                  FloatingActionButton(
                    backgroundColor: Color(0xffa5a5a5),
                    onPressed: (){
                      handleTopButtons(CalculatorButton.CHANGE_SIGN);
                    },
                    shape: CircleBorder(),
                    child: Text(
                      "±",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    ),
                  ),  //+/-
                  FloatingActionButton(
                    backgroundColor: Color(0xffa5a5a5),
                    onPressed: (){
                      handleTopButtons(CalculatorButton.PERCENT);
                    },
                    shape: CircleBorder(),
                    child: Text(
                      "%",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black
                      ),
                    ),
                  ),  //%
                  FloatingActionButton(
                    onPressed: (){
                      handleOpButtons(CalculatorButton.DIVIDE);
                    },
                    backgroundColor: Color(0xffff9f0a),
                    shape: CircleBorder(),
                    child: Text(
                      "÷",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //÷
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(7);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "7",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //7
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(8);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "8",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //8
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(9);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "9",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //9
                  FloatingActionButton(
                    onPressed: (){
                      handleOpButtons(CalculatorButton.MULTIPLY);
                    },
                    backgroundColor: Color(0xffff9f0a),
                    shape: CircleBorder(),
                    child: Text(
                      "X",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //x
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(4);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "4",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //4
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(5);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "5",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //5
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(6);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "6",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //6
                  FloatingActionButton(
                    onPressed: (){
                      handleOpButtons(CalculatorButton.SUBTRACT);
                    },
                    backgroundColor: Color(0xffff9f0a),
                    shape: CircleBorder(),
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //-
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(1);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "1",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //1
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(2);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "2",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //2
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(3);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //3
                  FloatingActionButton(
                    onPressed: (){
                      handleOpButtons(CalculatorButton.ADD);
                    },
                    backgroundColor: Color(0xffff9f0a),
                    shape: CircleBorder(),
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //+
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(0);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //0
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(0);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      "0",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //0
                  FloatingActionButton(
                    onPressed: (){
                      handleNumberInput(10);
                    },
                    backgroundColor: Color(0xff333333),
                    shape: CircleBorder(),
                    child: Text(
                      ".",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //.
                  FloatingActionButton(
                    onPressed: (){
                      handleOpButtons(CalculatorButton.EQUAL);
                    },
                    backgroundColor: Color(0xffff9f0a),
                    shape: CircleBorder(),
                    child: Text(
                      "=",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),  //=
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void handleNumberInput(int number) {
    setState(() {
      if(prevOperation == 5) {
        prevOperation = 0;
        total = 0;
      }
      inputNumber = inputNumber * 10 + number;
      tffController.text = inputNumber.toString();
    });
  }

  void handleOpInput(int operation) {
    switch(prevOperation) {
      case 0:
        total = inputNumber;
        inputNumber = 0;
        break;
      case 1:
        total = total + inputNumber;
        tffController.text = total.toString();
        inputNumber = 0;
        break;
      case 2:
        total = total - inputNumber;
        tffController.text = total.toString();
        inputNumber = 0;
        break;
      case 3:
        total = total * inputNumber;
        tffController.text = total.toString();
        inputNumber = 0;
        break;
      case 4:
        total = total ~/ inputNumber;
        tffController.text = total.toString();
        inputNumber = 0;
        break;
    }

    if(operation == 5) {
      tffController.text = total.toString();
      prevOperation = 5;
      return;
    }

    prevOperation = operation;
    setState(() {

    });
  }

  void handleClearInput() {
    total = 0;
    inputNumber = 0;
    prevOperation = 0;
    setState(() {
      tffController.text = total.toString();
    });
  }

  void handleTopButtons(CalculatorButton button) {

  }

  void handleOpButtons(CalculatorButton button) {

  }
}
