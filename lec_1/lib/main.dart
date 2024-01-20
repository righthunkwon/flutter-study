import 'package:flutter/material.dart';

// Widget
// stateless widget(static)
// stateful widget(dynamic)
// inherited widget

// Widget tree(Parent - Child)
// MyApp - MaterialApp - MyHomePage - Scaffold - ( . . . )

// main()
// runApp(Widget)
// function vs Class
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App title',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First AppBar title'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Center(
        // mainAxis of Column : 세로
        // mainAxis of Row    : 가로
        child: Column(
          //
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello 1'),
            Text('Hello 2'),
            Text('Hello 3'),
          ],
        ),
      ),
    );
  }
}
