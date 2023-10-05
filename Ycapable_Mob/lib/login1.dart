import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logo App Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo (You can replace 'assets/logo.png' with your logo image)
            Image.asset(
              "y.png",
              width: 320, // Adjust the width as needed
              height: 320, // Adjust the height as needed
            ),
            SizedBox(height: 20), // Spacer

            // Text below the logo
            Text(
              'Young&Capable',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Spacer

            // Buttons at the bottom (arranged vertically with a gap)
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Handle the first button action here
                  },
                  child: Text('Button 1'),
                ),
                SizedBox(height: 15), // Gap between buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle the second button action here
                  },
                  child: Text('Button 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
