import 'package:flutter/material.dart';
import 'package:social_networking_app/components/column_post.dart';
import 'package:social_networking_app/components/my_textfields.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // User
 
  // Text Controller
  final textController = TextEditingController();

// Sign Out User Method
  void signOut() {

  }

  // Post Message
  void postMessage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('360 News'),
        backgroundColor: Color.fromARGB(255, 25, 24, 24),
        elevation: 0,
        actions: [
          //Sign Out Button
          IconButton(
            onPressed: signOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(children: [
          // 360 Column

          // the message
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                  child: MyTextFields(
                      controller: textController,
                      hintText: 'Write something on the 360 Column',
                      obscureText: false),
                ),
                IconButton(
                    onPressed: postMessage,
                    icon: const Icon(Icons.arrow_circle_up))
              ],
            ),
          ),

          // logged in as
          const Text('Logged in as: ')
        ]),
      ),
    );
  }
}
