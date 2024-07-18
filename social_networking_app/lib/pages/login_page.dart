import 'package:flutter/material.dart';
import 'package:social_networking_app/components/my_buttons.dart';
import 'package:social_networking_app/components/my_textfields.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  // Text Editing Controllers
  static var usernameController = TextEditingController();
  static var passwordController = TextEditingController();
  static var signInController = TextEditingController();


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Method to sign user in
  void signIn() {
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),
                const SizedBox(height: 50),
                // Welcome Back, You have been missed
                const Text(
                  'Welcome back, Good to see you again',
                  style: TextStyle(
                      color: Color.fromARGB(255, 22, 21, 21), fontSize: 16),
                ),
                const SizedBox(height: 25),
                //Username text field
                MyTextFields(
                  controller: LoginPage.usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 20),

                // Password text field
                MyTextFields(
                  controller: LoginPage.passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // Forgot Password
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style:
                              TextStyle(color: Color.fromARGB(255, 38, 37, 37)),
                        )
                      ],
                    )),
                const SizedBox(height: 25),

                //Sign in Button
                MyButton(
                  //controller: LoginPage.signInController,
                  onTap: signIn,
                  textSign: 'Sign In',
                ),

                // Or continue with
                // Divider(
                //   thickness: 0.2,
                // ),
                const SizedBox(height: 25),
                // Google + Apple sign in buttons

                // Not a Member? Register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 63, 61, 61),
                        )),
                    const SizedBox(width: 7),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 13, 98, 167),
                        ),
                      ),
                    )
                  ],
                )

                // Welcome Back
              ],
            ),
          ),
        ));
  }
}
