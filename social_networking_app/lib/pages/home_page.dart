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
      appBar: AppBar(
        title: const Text('360 News'),
        actions: [
          //Sign Out Button
          IconButton(
            onPressed: signOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      drawer: Drawer(),

    );
  }
}
