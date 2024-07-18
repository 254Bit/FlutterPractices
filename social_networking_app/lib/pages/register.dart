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
   static var signUpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Theme.of(context).colorScheme.background,
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
                  'Let Us Create An Account For You',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(height: 25),
                //Username text field
                MyTextFields(
                  controller: usernameController,
                  hintText: 'Email',
                  obscureText: false,
                ),
                const SizedBox(height: 20),

                // Password text field
                MyTextFields(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                // Confirm Password text field
                MyTextFields(
                  controller: confirmPasswordController,
                  hintText: ' Confirm Password',
                  obscureText: true,
                ),
                const SizedBox(height: 25),

                //Sign in Button
                MyButton(
                  onTap: (){},
                  textSign: 'Sign Up',
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
                    Text('Already have an account?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        )),
                    const SizedBox(width: 7),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text(
                        'Log in now',
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
