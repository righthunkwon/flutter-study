import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snack Bar',
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
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (BuildContext ctx) {
          return Center(
            child: TextButton(
              child: Text('TextBtn'),
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                backgroundColor: MaterialStatePropertyAll(
                  Colors.blueAccent,
                ),
              ),
              onPressed: () {
                ScaffoldMessenger.of(ctx)
                    .showSnackBar(SnackBar(content: Text('SnackBar TextBtn')));
              },
            ),
          );
        },
      ),
    );
  }
}
