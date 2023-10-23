import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Olivias App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
//Making the HomePage widget

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Hello Olivia')), 
    body: const Text('Hello once again')
    
    ); // a scaffold widget, telling what to display when the method is built
  
  }
}

class TestWidgets extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const Text('Hi once again')


  }






}
