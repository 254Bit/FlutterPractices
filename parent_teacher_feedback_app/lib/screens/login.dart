import 'package:flutter/material.dart';
import 'package:parent_teacher_feedback_app/screens/my_buttons.dart';
import 'package:parent_teacher_feedback_app/screens/textfields.dart';
import 'package:firebase_auth/firebase_auth.dart';


class LogIn extends StatelessWidget {
  LogIn({super.key});

  // Text Editing Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign In User Method
  signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20.0),
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
            hintTexts: ('Email address'),
            obscureText: false,
            //prefixIcon: Icon(Icons.people),
          ),
          const SizedBox(height: 10),

          MyTextFields(
            controller: passwordController,
            hintTexts: ('Password'),
            obscureText: true,
          ),

          // Forgot Password?
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

         // Sign in button
          MyButton(
            onTap: signUserIn(),
          ),

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

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No account? Register',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                'here',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
