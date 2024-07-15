import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final formKey = GlobalKey<FormState>();

  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color(0xFFffffff),
        body: Container(
          decoration: const BoxDecoration(
            //image: DecorationImage(image: image),
            backgroundBlendMode: BlendMode.clear,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              stops:[0.1, 0.4, 0.6,0.9],
              colors: [Colors.blue, Color.fromARGB(900,800,400,400)
                // Colors.blue[900],
                // Colors.blue[800],
                // Colors.blue[400],

            ])
            
            
            ),
            
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  const Text('Excelsior',
                      style: TextStyle(fontSize: 30, color: Color(0xFF363f93))),
                  const Text('A Place of Excellence',
                      style: TextStyle(fontSize: 30, color: Color(0xFF363f93))),
                  const SizedBox(height: 0.05),
                  TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Enter Your Name'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Please enter a correct name";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(height: 0.05),
                  TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Email Address'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                .hasMatch(value)) {
                          return "Please enter a correct email";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(height: 0.05),
                  TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Phone Number'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                .hasMatch(value)) {
                          return "Please enter a correct phone number";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(height: 0.05),
                  TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Child Name'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Please enter a correct name";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(height: 0.05),
                  TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Enter Your Password'),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "Please enter a correct name";
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(height: 20),
                  
                  // Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       const Text('Sign Up',
                  //           style: TextStyle(fontSize: 22, color: Color(0xFF363f93))),
                        
                  //     ])
                ],
              ),
            )));
  }
}
