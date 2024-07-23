import 'package:flutter/material.dart';
import 'package:to_do_application/utilities/dialogue_box.dart';
import 'package:to_do_application/utilities/todo_tile.dart';
import 'package:to_do_application/utilities/my_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Text Controller
  final _controller = TextEditingController;

  // list of todo tasks
  List toDoList = [
    ['Make Tutorial', true],
    ['Do Exercise', true],
  ];

  // Check box tapped or not
  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

// Save a New Task
  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  // Delete a Task
  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  // Create a method for a new task
  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogueBox(
            controller: _controller,
            onSaved: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('TO DO'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
              taskName: toDoList[index][0],
              taskComplete: toDoList[index][1],
              onChanged: (value) => checkBoxChanged(value, index),
              deleteFunction: () => deleteTask);
        },
      ),
    );
  }
}
