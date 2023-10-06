import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'y.png', // Replace with your image asset path
                width: 400.0, // Adjust the width as needed
                height: 400.0, // Adjust the height as needed
              ),
              SizedBox(height: 20.0),
              Text(
                'Entrepreneurial hub a space of limitless growth!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle SIGN UP button click
                },
                child: Text('SIGN UP!'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300.0, 40.0), // Adjust button size as needed
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Handle LOG IN button click
                },
                child: Text('LOG IN'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300.0, 40.0), // Adjust button size as needed
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
