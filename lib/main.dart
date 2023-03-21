import 'package:calc/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

String expressionText = "";
String resultText = "";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  _onPressedFiled(String text) {
    List val = calcButtonPress(text);
    setState(() {
      expressionText = val[0];
      resultText = val[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    final double screenHeight =
        media.size.height - media.padding.top - media.padding.bottom;
    final double screenWidth =
        media.size.width - media.padding.left - media.padding.right;
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? MyTheme.darkTheme.scaffoldBackgroundColor : MyTheme.lightTheme.scaffoldBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 52 / 932),
            Container(
                height: screenHeight * 36 / 932,
                width: screenWidth,
                child: Text(
                  expressionText,
                  style: TextStyle(fontSize: screenHeight * 30 / 932, color: isDarkMode ? MyTheme.lightTheme.scaffoldBackgroundColor : MyTheme.darkTheme.scaffoldBackgroundColor,),
                  textAlign: TextAlign.right,
                )),
            SizedBox(height: screenHeight * 51 / 932),
            Divider(
              height: screenHeight * 1 / 932,
            ),
            SizedBox(height: screenHeight * 35 / 932),
            Container(
                height: screenHeight * 36 / 932,
                width: screenWidth,
                child: Text(
                  resultText,
                  style: TextStyle(fontSize: screenHeight * 30 / 932, color: isDarkMode ? MyTheme.lightTheme.scaffoldBackgroundColor : MyTheme.darkTheme.scaffoldBackgroundColor,),
                  textAlign: TextAlign.right,
                )),
            SizedBox(height: screenHeight * 34 / 932),
            Divider(
              height: screenHeight * 1 / 932,
            ),
            SizedBox(height: screenHeight * 32 / 932),
            Row(
              children: [
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[0],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[0]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[16],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[16]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[2],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[2]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[3],
                    designScreenWidth: 109,
                    onPressed: () {
                      _onPressedFiled(numsAndOps[3]);
                    })
              ],
            ),
            Divider(
              height: screenHeight * 2 / 932,
            ),
            Row(
              children: [
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[4],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[4]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[5],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[5]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[6],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[6]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[7],
                    designScreenWidth: 109,
                    onPressed: () {
                      _onPressedFiled(numsAndOps[7]);
                    })
              ],
            ),
            Divider(
              height: screenHeight * 2 / 932,
            ),
            Row(
              children: [
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[8],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[8]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[9],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[9]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[10],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[10]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[11],
                    designScreenWidth: 109,
                    onPressed: () {
                      _onPressedFiled(numsAndOps[11]);
                    })
              ],
            ),
            Divider(
              height: screenHeight * 2 / 932,
            ),
            Row(
              children: [
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[12],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[12]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[13],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[13]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[14],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[14]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[15],
                    designScreenWidth: 109,
                    onPressed: () {
                      _onPressedFiled(numsAndOps[15]);
                    })
              ],
            ),
            Divider(
              height: screenHeight * 2 / 932,
            ),
            Row(
              children: [
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[17],
                    designScreenWidth: 213,
                    onPressed: () {
                      _onPressedFiled(numsAndOps[17]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[18],
                    onPressed: () {
                      _onPressedFiled(numsAndOps[18]);
                    }),
                SizedBox(width: screenWidth * 1 / 430),
                CalcButton(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    text: numsAndOps[19],
                    designScreenWidth: 109,
                    onPressed: () {
                      _onPressedFiled(numsAndOps[19]);
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<String> numsAndOps = [
  "AC",
  "\u00B1",
  "%",
  "\u00F7",
  "7",
  "8",
  "9",
  "\u00D7",
  "4",
  "5",
  "6",
  "-",
  "1",
  "2",
  "3",
  "+",
  "\u21A9",
  "0",
  ".",
  "=",
];

calcButtonPress(String text) {
  if (text != "\u00B1") {
    if (text == "=") {
      Parser p = Parser();
      try {
        Expression exp = p.parse(expressionText);
        ContextModel cm = ContextModel();
        double eval = exp.evaluate(EvaluationType.REAL, cm);
        resultText = eval.toStringAsPrecision(10);
      } catch (e) {
        resultText = "Syntax Error";
      }
    } else if (text == "%") {
      expressionText += "%";
    } else if (text == "+" ||
        text == "\u00F7" ||
        text == "\u00D7" ||
        text == "-") {
      switch (text) {
        case "\u00F7":
          expressionText += "/";
          break;
        case "\u00D7":
          expressionText += "*";
          break;
        default:
          expressionText += text;
      }
    } else if (text == "AC") {
      expressionText = "";
      resultText = "";
    } else if (text == "\u21A9") {
      expressionText = expressionText.substring(0, expressionText.length - 1);
    } else {
      expressionText += text;
    }
  }
  return [expressionText, resultText];
}

class CalcButton extends StatelessWidget {
  CalcButton(
      {super.key,
      required this.screenHeight,
      required this.screenWidth,
      required this.text,
      required this.onPressed,
      this.designScreenHeight = 128,
      this.designScreenWidth = 106});

  VoidCallback? onPressed;
  final double screenHeight;
  final double screenWidth;
  final double designScreenHeight;
  final double designScreenWidth;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * designScreenHeight / 932,
      width: screenWidth * designScreenWidth / 430,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
            shadowColor: MaterialStatePropertyAll(Colors.transparent)),
        child: Text(text, style: TextStyle(fontSize: screenHeight * 30 / 932)),
      ),
    );
  }
}
