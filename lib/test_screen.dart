import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//StaggeredGridView only rendered using Expanded or big container

enum CalculatorButton {
  NO_OP,
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

class CalculatorScreen1 extends StatefulWidget {
  const CalculatorScreen1({super.key});

  @override
  State<CalculatorScreen1> createState() => _CalculatorScreenState1();
}

class _CalculatorScreenState1 extends State<CalculatorScreen1> {

  TextEditingController tffController = TextEditingController();

  double inputNumber = 0;
  double total = 0;

  String result = "0";

  bool isDecimalNum = false;
  bool isPositive = true;

  double savedNum = 0;
  CalculatorButton savedOperation = CalculatorButton.NO_OP;
  //int decimalCounter = 0;

  CalculatorButton prevOperation = CalculatorButton.NO_OP;

  double tffFontSize = 90.0;

  Color orange = Color(0xffff9f0a);
  Color white = Colors.white;

  List<Color> opButtonColors = [
    Color(0xffff9f0a),
    Color(0xffff9f0a),
    Color(0xffff9f0a),
    Color(0xffff9f0a),
  ];

  List<Color> opTextColors = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  List<Widget>? buttonsList;
  List<StaggeredTile> stTilesList = [
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(1, 1),
    StaggeredTile.count(1, 1),

  ];

  @override
  Widget build(BuildContext context) {
    buttonsList = [
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
        backgroundColor: opButtonColors[0],
        shape: CircleBorder(),
        child: Text(
          "÷",
          style: TextStyle(
            fontSize: 30.0,
            color: opTextColors[0],
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
        backgroundColor: opButtonColors[1],
        shape: CircleBorder(),
        child: Text(
          "X",
          style: TextStyle(
            fontSize: 30.0,
            color: opTextColors[1],
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
        backgroundColor: opButtonColors[2],
        shape: CircleBorder(),
        child: Text(
          "-",
          style: TextStyle(
            fontSize: 30.0,
            color: opTextColors[2],
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
        backgroundColor: opButtonColors[3],
        shape: CircleBorder(),
        child: Text(
          "+",
          style: TextStyle(
            fontSize: 30.0,
            color: opTextColors[3],
          ),
        ),
      ),  //+
      FloatingActionButton(
        onPressed: (){
          handleNumberInput(0);
        },
        backgroundColor: Color(0xff333333),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Container(
          width: 108,
          child: Text(
            "0",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
            ),
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
    ];
    TextFormField tff = TextFormField(
      onChanged: (String text){
        resizeText(text);
      },
      textAlign: TextAlign.end,
      controller: tffController,
      style: TextStyle(
        fontSize: tffFontSize,
        color: Colors.white,
      ),
      decoration: InputDecoration(
          border: InputBorder.none
      ),
      readOnly: true,
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: FittedBox(
                    fit: BoxFit.fitHeight,
                    alignment: Alignment.topRight,
                    child: Text(
                      result,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: tffFontSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: StaggeredGridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                staggeredTiles: stTilesList,
                children: buttonsList!,
              )
            ),
          ),

        ],
      ),
    );
  }

  void handleNumberInput(int number) {
      resetOpButtonsColors();
      if(prevOperation == CalculatorButton.EQUAL) {
        prevOperation = CalculatorButton.NO_OP;
        total = 0;
      }

      if(digitLimitExceeded(inputNumber)) {
        return;
      }
      if(number == 10) {
        isDecimalNum = true;
        changeResultText(inputNumber);
        return;
      }

      if(!isDecimalNum) {
        inputNumber = inputNumber * 10 + number * getNumberSign();
      }
      else {
        inputNumber = handleDecimalNumInput(inputNumber, number);
        // decimalCounter--;
        // inputNumber += getNumberSign() * number * pow(10, decimalCounter);
      }

      if(prevOperation == CalculatorButton.NO_OP) {
        total = inputNumber;
      }

      changeResultText(inputNumber);
  }

  // void handleOpInput(CalculatorButton operation) {
  //   switch(prevOperation) {
  //     case CalculatorButton.NO_OP:
  //       total = inputNumber;
  //       inputNumber = 0;
  //       break;
  //     case CalculatorButton.ADD:
  //       total = total + inputNumber;
  //       changeResultText(total);
  //       inputNumber = 0;
  //       break;
  //     case CalculatorButton.SUBTRACT:
  //       total = total - inputNumber;
  //       changeResultText(total);
  //       inputNumber = 0;
  //       break;
  //     case CalculatorButton.MULTIPLY:
  //       total = total * inputNumber;
  //       changeResultText(total);
  //       inputNumber = 0;
  //       break;
  //     case CalculatorButton.DIVIDE:
  //       total = total / inputNumber;
  //       changeResultText(total);
  //       inputNumber = 0;
  //       break;
  //     case CalculatorButton.EQUAL:
  //       changeResultText(total);
  //     default:
  //       break;
  //   }
  //
  //   prevOperation = operation;
  //   setState(() {
  //
  //   });
  // }

  void handleOpButtons(CalculatorButton operation) {
    switch(operation) {
      case CalculatorButton.ADD:
      case CalculatorButton.SUBTRACT:
        applyPrevOperation();
        checkForSavedOP();
        break;
      case CalculatorButton.MULTIPLY:
      case CalculatorButton.DIVIDE:
        if(prevOperation == CalculatorButton.ADD || prevOperation == CalculatorButton.SUBTRACT) {
          savedOperation = prevOperation;
          savedNum = total;
          total = inputNumber;
        }
        else {
          applyPrevOperation();
        }
        break;
      case CalculatorButton.EQUAL:
        applyPrevOperation();
        checkForSavedOP();
        changeResultText(total);
        break;
      default:
        setInputFlagsToDefault();
        return;
    }

    changeOpButtonColors(operation);
    setInputFlagsToDefault();
    prevOperation = operation;
  }

  void handleClearInput() {
    total = 0;
    setInputFlagsToDefault();
    prevOperation = CalculatorButton.NO_OP;
    changeResultText(total);
  }

  void setInputFlagsToDefault() {
    inputNumber = 0;
    isDecimalNum = false;
    isPositive = true;
  }

  void handleTopButtons(CalculatorButton button) {
    switch(button) {
      case CalculatorButton.C:
        handleClearInput();
        break;
      case CalculatorButton.CHANGE_SIGN:
        if(prevOperation == CalculatorButton.EQUAL || prevOperation == CalculatorButton.NO_OP) {
          total = changeSign(total);
          isPositive = !isPositive;
          changeResultText(total);
        }
        else {
          inputNumber = changeSign(inputNumber);
          isPositive = !isPositive;
          changeResultText(inputNumber);
        }
        break;
      case CalculatorButton.PERCENT:
        if(prevOperation == CalculatorButton.EQUAL || prevOperation == CalculatorButton.NO_OP) {
          total /= 100;
          changeResultText(total);
        }
        else {
          inputNumber /= 100;
          changeResultText(inputNumber);
        }
      default:
    }
  }

  void changeResultText(double num) {
    String newText = num.toString();
    if(isDecimalNum) {
      newText = handleDecimalNumText(num);
    }
    else if(num.roundToDouble() == num) {
      newText = num.toInt().toString();
    }

    if(!isPositive && newText[0] != "-") {
      newText = "-$newText";
    }

    //resizeText(newText);
    newText = getMaxAccuracy(6, numString: newText);
    result = newText;
    setState(() {});
  }

  void resizeText(String text) {
    if(text.length < 8) {
      tffFontSize = 90.0;
    }
    else if(text.length < 11) {
      tffFontSize = 60.0;
    }
    else {
      tffFontSize = 30.0;
    }
  }

  String handleDecimalNumText(double num) {
    String text = num.toString();
    for(int i = text.length - 1; i > 0; i--) {
      if(text[i] == "0") {
        text = text.substring(0, i);
      }
      else {
        break;
      }
    }

    return text;
  }

  double changeSign(double num) {
    return num * -1;
  }

  double getNumberSign() {
    if(isPositive) {
      return 1;
    }
    return -1;
  }

  bool digitLimitExceeded(double num) {
    String text = handleDecimalNumText(num);
    int counter = 0;
    for(int i=0; i<text.length; i++) {
      if(text[i] != ".") {
        counter++;
      }
    }
    return counter >= 9;
  }

  double handleDecimalNumInput(double inputNumber, int number) {
    String text = handleDecimalNumText(inputNumber);
    text = "$text$number";
    return double.parse(text);
  }

  String getMaxAccuracy(int maxAccuracy, {double? numDouble, String? numString}) {
    String text = "0";
    if(numString == null) {
      text = numDouble.toString();
    }
    else {
      text = numString;
    }

    int counter = 0;
    bool dotDetected = false;
    for(int i=0; i < text.length; i++) {
      if(text[i] == ".") {
        dotDetected = true;
        continue;
      }
      if(dotDetected) {
        counter++;
        if(counter > maxAccuracy) {
          text = text.substring(0, i);
        }
      }
    }
    return text;
  }

  bool checkForSavedOP() {
    if(savedOperation == CalculatorButton.NO_OP) {
      return false;
    }

    switch(savedOperation) {
      case CalculatorButton.ADD:
        total += savedNum;
        break;
      case CalculatorButton.SUBTRACT:
        total -= savedNum;
        break;
      case CalculatorButton.MULTIPLY:
        total *= savedNum;
        break;
      case CalculatorButton.DIVIDE:
        total /= savedNum;
        break;
      case CalculatorButton.EQUAL:
        break;
      default:
    }

    savedOperation = CalculatorButton.NO_OP;
    return true;
  }

  void applyPrevOperation() {
    switch(prevOperation) {
      case CalculatorButton.ADD:
        total += inputNumber;
        break;
      case CalculatorButton.SUBTRACT:
        total -= inputNumber;
        break;
      case CalculatorButton.MULTIPLY:
        total *= inputNumber;
        break;
      case CalculatorButton.DIVIDE:
        total /= inputNumber;
        break;
      case CalculatorButton.EQUAL:
        break;
      default:
        return;
    }
    print(total);
    changeResultText(total);
  }

  void resetOpButtonsColors() {
    for(int i=0; i<4; i++) {
      opButtonColors[i] = orange;
      opTextColors[i] = white;
    }

    print("All colors reset");
    setState(() {});
  }

  void changeOpButtonColors(CalculatorButton operation) {
    switch(operation) {
      case CalculatorButton.DIVIDE:
        opButtonColors[0] = white;
        opTextColors[0] = orange;
        break;
      case CalculatorButton.MULTIPLY:
        opButtonColors[1] = white;
        opTextColors[1] = orange;
        print("In");
        break;
      case CalculatorButton.SUBTRACT:
        opButtonColors[2] = white;
        opTextColors[2] = orange;
        break;
      case CalculatorButton.ADD:
        opButtonColors[3] = white;
        opTextColors[3] = orange;
        break;
      default:
        resetOpButtonsColors();
    }
    print("Changed $operation color");
    setState(() {});
  }
}
