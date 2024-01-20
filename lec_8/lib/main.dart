import 'package:flutter/material.dart';

// Navigator
// stack - push, pop

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigator',
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
      appBar: AppBar(
        title: Text('First page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go to the Second Page'),
            onPressed: () {
              Navigator.push(
                  context,
                  // underscore(_): useless argument
                  MaterialPageRoute(builder: (_) => SecondPage()));
            }),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second page'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Go to the First Page'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));
  }
}
