// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class MyCalculator extends StatefulWidget {
//   const MyCalculator({super.key});

//   @override
//   State<MyCalculator> createState() => _MyCalculatorState();
// }

// class _MyCalculatorState extends State<MyCalculator> {
//   TextEditingController number = TextEditingController();
//   TextEditingController number2 = TextEditingController();
//   TextEditingController operators = TextEditingController();
//   String answer = '';
//   String calc();

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     double text = MediaQuery.textScaleFactorOf(context);

//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         appBar: AppBar(
//           backgroundColor: Colors.teal,
//           title: const Text(
//             'Calculator',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(10 * text),
//                   width: width * 0.35,
//                   child: TextFormField(
//                       cursorColor: Colors.teal,
//                       controller: number,
//                       onChanged: (val) {
//                         setState(() {
//                           number.text = val;
//                           number.selection = TextSelection.fromPosition(
//                             TextPosition(offset: number.text.length),
//                           );
//                         });
//                       },
//                       keyboardType: TextInputType.number,
//                       decoration: const InputDecoration(
//                           hintText: '1st number',
//                           hintStyle: TextStyle(
//                             color: Colors.grey,
//                           ))),
//                 ),
//                 Container(
//                     padding: EdgeInsets.all(10 * text),
//                     width: width * 0.25,
//                     child: TextFormField(
//                       textAlign: TextAlign.center,
//                       cursorColor: Colors.teal,
//                       controller: operators,
//                       onChanged: (val) {
//                         setState(() {
//                           operators.text = val;
//                           operators.selection = TextSelection.fromPosition(
//                             TextPosition(offset: operators.text.length),
//                           );
//                         });
//                       },
//                       decoration: const InputDecoration(
//                         hintText: '(+, _, etc)',
//                         hintStyle: TextStyle(
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ))
//               ],
//             ),
//             Container(
//               width: double.infinity,
//               height: height * 0.4,
//               child: Center(
//                 child: Text(
//                   answer == '' ? 'Your Answer will be displayed here' : answer,
//                   style: TextStyle(
//                     fontSize: answer == '' ? 16 * text : 25 * text,
//                     color: answer == '' ? Colors.grey : Colors.teal,
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                     width: width * 0.4,
//                     height: height * 0.08,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color.teal,
//                       ),
//                       onPressed: () {
//                         answer = calc();
//                         setState(() {});
//                       },
//                       child: Text('CALCULATE'),
//                     )),
//                 Container(
//                     width: width * 0.4,
//                     height: height * 0.08,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color.teal,
//                       ),
//                       onPressed: () {
//                         number.clear();
//                         operators.clear();
//                         number2.clear();
//                         answer = '';
//                         setState(() {});
//                       },
//                       child: Text('CLEAR'),
//                     )),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     number.dispose();
//     number2.dispose();
//     operators.dispose();
//     super.dispose();
//   }
//   //   String calc() {
//   //   Parser p = Parser();
//   //   Expression e = p.parse('${number.text + operators.text + number2.text}');
//   //   ContextModel cm = ContextModel();
//   //   num answer = e.evaluate(EvaluationType.REAL, cm);
//   //   return answer.toString().length>10
//   //   ? answer.toStringAsPrecision(3)
//   //   ? answer.toString();
//   // }
// }
