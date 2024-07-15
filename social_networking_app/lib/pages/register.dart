import 'package:flutter/material.dart';
import 'package:social_networking_app/components/my_buttons.dart';
import 'package:social_networking_app/components/my_textfields.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({
    super.key,
    required this.onTap,
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
// text editing controllers
  static var usernameController = TextEditingController();
  static var passwordController = TextEditingController();
  static var confirmPasswordController = TextEditingController();

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
                  'Let Us Create An Account',
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
                // Confirm Password text field
                MyTextFields(
                  controller: confirmPasswordController,
                  hintText: ' Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(height: 25),

                //Sign in Button
                MyButton(
                  onTap: widget.onTap,
                  //text: 'Sign Up',
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
                    const Text('Already have an account?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 63, 61, 61),
                        )),
                    const SizedBox(width: 7),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Login here',
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
