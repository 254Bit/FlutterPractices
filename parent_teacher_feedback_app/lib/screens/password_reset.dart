// import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyPasswordReset extends StatefulWidget {
  //final VoidCallback showLogIn;
  const MyPasswordReset({
    super.key,
   // required this.showLogIn,
    });

  @override
  State<MyPasswordReset> createState() => _MyPasswordResetState();
}

class _MyPasswordResetState extends State<MyPasswordReset> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 10, 50),
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'Reset Password',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Receive an email to \nreset your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  cursorColor: Colors.white,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(labelText: 'Email'),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  // validator: (email) =>
                  //     email != null && !EmailValidator.validate(email)
                  //         ? 'Enter a valid email'
                  //         : null,
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(1, 5, 30, 54),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 20),
                  ),
                  icon: const Icon(Icons.email_outlined),
                  onPressed: resetPassword,
                  label: const Text(
                    'Reset Password',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  Future resetPassword() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: emailController.text.trim());

    Navigator.popUntil(context, (route) => route.isFirst);

    //Utils.showSnackBar('Password Reset Email Sent');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Password Reset sent to email. Check Your Email'),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
