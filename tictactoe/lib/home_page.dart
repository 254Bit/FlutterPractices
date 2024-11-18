import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ohTurn = true; // the first player is oh
  List<String> displayExOh = ['', '', '', '', '', '', '', '', ''];

  // var myTextStyle = const TextStyle(color: Colors.white, fontSize: 20);
  int ohScore = 0;
  int exScore = 0;
  int filledBoxes = 0;

  static var myNewFont = GoogleFonts.pressStart2p(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 232, 227, 227),
          letterSpacing: 3,
          fontSize: 10));
  static var myNewFontWhite = GoogleFonts.pressStart2p(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 149, 244, 8), letterSpacing: 2));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(66, 66, 66, 1),
        body: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text('Score Board',
                //     style: TextStyle(color: Colors.amber, fontSize: 35)),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Player X', style: myNewFontWhite),
                      const SizedBox(height: 10),
                      Text(exScore.toString(), style: myNewFontWhite),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Player O', style: myNewFontWhite),
                      const SizedBox(height: 10),
                      Text(ohScore.toString(), style: myNewFontWhite),
                    ],
                  ),
                ),
              ],
            )),
            Expanded(
              flex: 3,
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _tapped(index);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 150, 148, 148)),
                        ),
                        child: Center(
                          child: Text(
                            displayExOh[index],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 40),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tic Tac Toe', style: myNewFontWhite),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'oliviaayora@gmail.com',
                        style: myNewFont,
                        softWrap: true,
                      ),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ));
  }

  void _tapped(int index) {
    setState(() {
      if (ohTurn && displayExOh[index] == '') {
        displayExOh[index] = 'o';
        filledBoxes += 1;
      } else if (!ohTurn && displayExOh[index] == '') {
        displayExOh[index] = 'x';
        filledBoxes += 1;
      }
      ohTurn = !ohTurn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    // 1st Row
    if (displayExOh[0] == displayExOh[1] &&
        displayExOh[0] == displayExOh[2] &&
        displayExOh[0] != '') {
      _showInDialog(displayExOh[0]);
    }

    // 2nd Row
    if (displayExOh[3] == displayExOh[4] &&
        displayExOh[3] == displayExOh[5] &&
        displayExOh[3] != '') {
      _showInDialog(displayExOh[0]);
    }

    // 3rd Row
    if (displayExOh[6] == displayExOh[7] &&
        displayExOh[6] == displayExOh[8] &&
        displayExOh[6] != '') {
      _showInDialog(displayExOh[6]);
    }

    // Checks First Column
    if (displayExOh[0] == displayExOh[3] &&
        displayExOh[0] == displayExOh[6] &&
        displayExOh[0] != '') {
      _showInDialog(displayExOh[0]);
    }

    // Checks Second Column
    if (displayExOh[1] == displayExOh[4] &&
        displayExOh[1] == displayExOh[7] &&
        displayExOh[1] != '') {
      _showInDialog(displayExOh[1]);
    }

    // Checks 3rd Column
    if (displayExOh[2] == displayExOh[5] &&
        displayExOh[2] == displayExOh[8] &&
        displayExOh[2] != '') {
      _showInDialog(displayExOh[2]);
    }

    // Check Diagnoals
    if (displayExOh[6] == displayExOh[4] &&
        displayExOh[6] == displayExOh[2] &&
        displayExOh[6] != '') {
      _showInDialog(displayExOh[6]);
    }

    // Check Diagnoals
    if (displayExOh[0] == displayExOh[4] &&
        displayExOh[0] == displayExOh[8] &&
        displayExOh[0] != '') {
      _showInDialog(displayExOh[0]);
    } else if (filledBoxes == 9) {
      _showDrawDialogBox();
    }
  }

  void _showDrawDialogBox() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(title: const Text('Game Draw'), actions: [
            TextButton(
              child: const Text('Retry'),
              onPressed: () {
                _clearBoard();
                Navigator.of(context).pop();
              },
            )
          ]);
        });
  }

  void _showInDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(title: Text('You Win!:' + winner), actions: [
            TextButton(
              child: const Text('Retry'),
              onPressed: () {
                _clearBoard();
                Navigator.of(context).pop();
              },
            )
          ]);
        });

    if (winner == 'o') {
      ohScore += 1;
    } else if (winner == 'x') {
      exScore += 1;
    }
  }

  void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        displayExOh[i] = '';
      }
    });
    filledBoxes = 0;
  }
}
