import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String userInput = '';
  String result = '0';
  List<String> buttonList = [
    'C',
    '%',
    ' ',
    '÷',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '00',
    '0',
    '.',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/3,
          child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding:EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: Text('$userInput',
              style: TextStyle(
                fontSize:17,color:Colors.black,
              ),
              ),
            ),
             Container(
              padding:EdgeInsets.all(20),
              alignment: Alignment.centerRight,
              child: Text('$result',
              style: TextStyle(
                fontSize:24,color:Colors.black,
              ),
              ),
            ),

          ],),
          
          ),
        ],
      )
    );
  }
}
