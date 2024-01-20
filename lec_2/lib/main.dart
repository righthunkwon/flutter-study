import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// Widget = Instance from Class
// ex. Text() ← Constructor of Text class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'instagram',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff767676),
        appBar: AppBar(
          title: Text('instagram', style: TextStyle(color: Colors.white)),
          backgroundColor: Color(0xffF74471),
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0), // padding → left == right
            child: Column(
              // crossAxis of Column : 가로
              // crossAxis of Row    : 세로
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Easy wrap : Ctrl + click the bulb
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/cat.png'),
                    radius: 60.0,
                  ),
                ),

                Divider(
                  height: 60.0,
                  color: Colors.white70,
                  thickness: 0.5,
                  endIndent: 30.0,
                ),

                Text(
                  'NAME',
                  // details: Ctrl + click
                  style: TextStyle(color: Colors.white, letterSpacing: 2.0),
                ),

                // padding
                SizedBox(
                  height: 10.0,
                ),

                Text(
                  '@right_hun',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(
                  height: 30.0,
                ),

                Text(
                  'AGE',
                  // details: Ctrl + click
                  style: TextStyle(color: Colors.white, letterSpacing: 2.0),
                ),

                // padding
                SizedBox(
                  height: 10.0,
                ),

                Text(
                  '29',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // padding
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Hankuk Univ of Foreign Studies',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Samsung SW Academy For Youth',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Back-end devleoper',
                        style: TextStyle(
                          fontSize: 16.0,
                          letterSpacing: 1.0,
                        )),
                  ],
                ),

                SizedBox(
                  height: 100.0,
                ),

                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/penguin.gif'),
                    radius: 40.0,
                    backgroundColor: Color(0xff767676),
                  ),
                )
              ],
            )));
  }
}
