import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// fluttertoast
// project dir - android - app - build.gradle 에서 Sdk Version 수정 필요
// android {
//      defaultConfig {
//          minSdkVersion 21
//      }
// }

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
      appBar: AppBar(
        title: Text('Toast msg'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: Text('Toast msg'),
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            backgroundColor: MaterialStatePropertyAll(
              Colors.blueAccent,
            ),
          ),
          onPressed: () {
            flutterToast();
          },
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
    msg: 'Fluttertoast',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT,
  );
}
