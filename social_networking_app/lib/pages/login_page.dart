import 'package:flutter/material.dart';
import 'package:social_networking_app/components/my_buttons.dart';
import 'package:social_networking_app/components/my_textfields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // Text Editing Controllers
  static var usernameController = TextEditingController();
  static var passwordController = TextEditingController();

  // Sign User In Method
  void signUserIn() {}

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
                  'Welcome back you\'ve been missed',
                  style: TextStyle(
                      color: Color.fromARGB(255, 22, 21, 21), fontSize: 16),
                ),
                const SizedBox(height: 25),
                //Username text field
                MyTextFields(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),
                const SizedBox(height: 20),

                // Password text field
                MyTextFields(
                  controller: passwordController,
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
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )),
                const SizedBox(height: 25),

                //Sign in Button
                MyButton(
                  onTap: signUserIn,
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
                    const Text('Not a Member?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 63, 61, 61),
                        )),
                    const SizedBox(width: 7),
                    GestureDetector(
                      onTap: (){},
                      child: const Text(
                        'Register Now',
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
