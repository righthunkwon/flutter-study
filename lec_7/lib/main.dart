import 'package:flutter/material.dart';

// Container Widget
// Margin, Padding, Only one child

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toast msg',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: Text('Container 1'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: Text('Container 3'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
