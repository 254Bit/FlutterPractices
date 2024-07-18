import 'package:flutter/material.dart';
import 'package:social_networking_app/components/my_buttons.dart';
import 'package:social_networking_app/components/my_textfields.dart';
import 'package:social_networking_app/themes/light_mode.dart';

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
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Icon(
                  Icons.message_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(height: 50),
                // Welcome Back, You have been missed
                 Text(
                  'Welcome back, Good to see you again',
                  style: TextStyle(
                      color:Theme.of(context).colorScheme.primary, 
                      fontSize: 16),
                ),
                const SizedBox(height: 25),
                //Username text field
                MyTextFields(
                  controller: LoginPage.usernameController,
                  hintText: 'Email',
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
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style:
                              TextStyle(color: Theme.of(context).colorScheme.primary),
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
                     Text('Don\'t have an account?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                    const SizedBox(width: 7),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
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
