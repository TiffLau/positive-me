import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

void main() {
  runApp(
    new MaterialApp(
        title: 'Positive Me!',
        theme: ThemeData(
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: new MyApp()),
  );
}

class MyAppState extends State<MyApp> {
  String displayedString = "";

  void onPressed() {
    setState(() {
      print('Sending you a positive message <3');
      displayedString = "\nYou are very loved ~ you are not alone";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text('My Positive Self', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.tealAccent[100],
      ),
      body: Center(
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello!\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
            Text(
              'How are you today?\n\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.pinkAccent,
              ),
            ),
            RaisedButton(
              child: Text('Click on Me for a Little Note'),
              color: Colors.lightGreenAccent[200],
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
              onPressed: onPressed,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
              child: Text(
                displayedString,
                textAlign: TextAlign.center,
                style: GoogleFonts.pinyonScript(
                  color: Colors.redAccent[400],
                  fontSize: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
