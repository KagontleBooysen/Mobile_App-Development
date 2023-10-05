import 'package:flutter/material.dart';

class LinkActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // Set the background color to red
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'y.png', // Replace with your image path
              width: 350.0,
              height: 350.0,
            ),
            SizedBox(height: 16.0),
            Text(
              "Video Chat Link Sent!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "The student just received a notification and the link is not available for them.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Add your book logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 100.0),
              ),
              child: Text("Book"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LinkActivity2(),
  ));
}
