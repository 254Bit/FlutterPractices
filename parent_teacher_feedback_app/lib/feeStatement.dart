import 'package:flutter/material.dart';

class FeeStatement extends StatelessWidget {
  // final String myTexts;
  // final String myRows;
  // final String myColumns;

  const FeeStatement({
    super.key,
    // required this.myTexts,
    // required this.myRows,
    // required this.myColumns,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Flexible(
          child: Row(
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(' Fees\n',
                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),),
                      ),
                      Text('Tuition \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('Exams \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('Medical \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('Total \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),),
                    ],
                  ),
                ),
              ),
               Flexible(
                 child: Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Term 1 \n',
                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),),
                      ),
                      Text('300 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('400 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('500 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('1200 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),),
                    ],
                         ),
                 ),
               ),
               Flexible(
                 child: Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Term 2 \n',
                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),),
                      ),
                      Text('100 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('200 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('300 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('600 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),),
                    ],
                         ),
                 ),
               ),
               Flexible(
                 child: Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Term 3 \n',
                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),),
                      ),
                      Text('100 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('100 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('100 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),),
                      Text('300 \n',
                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),),
                    ],
                         ),
                 ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}