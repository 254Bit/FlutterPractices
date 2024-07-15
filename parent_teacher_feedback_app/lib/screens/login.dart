import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/entities/register_api.dart';
import 'package:parent_teacher_feedback_app/register.dart';
import 'package:parent_teacher_feedback_app/screens/password_reset.dart';
import 'dart:convert' show json;
import 'package:parent_teacher_feedback_app/screens/textfields.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;

//import 'package:parent_teacher_feedback_app/landing_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String _email = "";
  String _password = "";

  // loginPresed() async {
  //   if (_email.isNotEmpty && _password.isNotEmpty) {
  //     http.Response response = await CallRegisterAPI().login(_email, _password);
  //     Map responseMap = json.decode(response.body);
  //     if(response.statusCode == 200){
        
  //     }else {
  //       //SnackBar(context, responseMap.values.first[0]);
  //     }
  //   }
  // }

  // Text Editing Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign In User Method
  signUserIn() async {
    // Show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch (err) {
      // Wrong email
      if (err.code == 'Email Address not Found') {
        wrongEmailMessage();
      }

      // Wrong password
      else if (err.code == 'wrong password') {
        wrongPasswordMessage();
      }
    }
    // Pop the loading circle
    Navigator.pop(context);
  }

  // wrong email message pop up
  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color.fromARGB(0, 223, 219, 219),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                )),
            title: const Text(
              'Wrong Email',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          );
        });
  }

  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            title: Text(
              'Wrong Password!',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 208, 202, 223),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10.0),
              // logo
              Image.asset(
                'assets/parentchild.PNG',
                height: 150,
                width: 150,
              ),
              const SizedBox(height: 10),
              //Welcome Back
              const Text(
                'Exlesior',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 20.0),

              // Username TextFie
              MyTextFields(
                controller: emailController,
                hintTexts: 'Email address',
                obscureText: false,
                labelText: 'Email Address',
                
                //prefixIcon: Icon(Icons.people),
              ),
              const SizedBox(height: 10),

              MyTextFields(
                controller: passwordController,
                hintTexts: 'Password',
                obscureText: true,
                labelText: 'Password',
              ),

              // Forgot Password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.grey),
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const MyPasswordReset())));
                        }),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //Sign in button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //minimumSize: const Size.fromHeight(20),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                  ),
                  child: const Text(
                    'Log In',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () {
                    signUserIn();
                  },
                ),
              ),
              // MyButton(
              //   onTap: signUserIn(),
              // ),

              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ))
                  ],
                ),
              ),
              // google + apple sign in button
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('assets/gmail.svg.webp',
                  // height: 20),

                  // const SizedBox(width: 10),

                  // Image.asset('assets/yahoo_icon.png',
                  // height: 20),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'No account? Register ',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      'here',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyRegister()));
                      });
                    },
                  ),
                ],
              )

              // or continue with
            ],
          ),
        )

            // Register

            ));
  }
}
