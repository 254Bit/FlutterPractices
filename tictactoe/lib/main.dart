import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tictactoe/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  static var myNewFontWhite = GoogleFonts.pressStart2p(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 250, 251, 248), letterSpacing: 2));
  static var myNewFontBlack = GoogleFonts.pressStart2p(
      textStyle: const TextStyle(
          color: Color.fromARGB(255, 19, 1, 1),
          letterSpacing: 3,
          fontSize: 10));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Container(
                  child: Text(
                    'TIC TAC TOE',
                    style: myNewFontWhite.copyWith(fontSize: 30),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: AvatarGlow(
                    duration: const Duration(seconds: 2),
                    glowColor: Color.fromARGB(255, 144, 243, 6),
                    //endRadius: 60,
                    repeat: true,
                    //repeatPauseDuration: const Duration(seconds:1),
                    curve: Curves.fastOutSlowIn,
                    startDelay: const Duration(seconds: 1),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.none,
                          ),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                          backgroundColor: Colors.grey[900],
                          child: Container(
                              child: Image.asset(
                            'lib/images/tactoe.jpeg',
                            color: Colors.white,
                            fit: BoxFit.scaleDown,
                          ))),
                    )),
              ),
            ),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Container(
                      child: Text(
                        '@OLIVIA_AYORA 2024',
                        style: myNewFontWhite.copyWith(fontSize: 10),
                      ),
                    ))),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => HomePage())));
                },
                child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, bottom: 60),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(30),
                        color: Colors.white,
                        child: Center(
                          child: Text('PLAY GAME', style: myNewFontBlack),
                        ),
                      ),
                    ))),
          ],
        )),
      ),
    );
  }
}
