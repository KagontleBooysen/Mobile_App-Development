import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyClassPage(),
  ));
}

class MyClassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class, Class Name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/class_image.jpg', // Replace with your image path
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              "Full Name",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Email",
            ),
            SizedBox(height: 8.0),
            Text(
              "Requested Date",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            InkWell(
              child: Text(
                "Date", // Link to a calendar
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {
                // Implement navigation to the calendar here
              },
            ),
            SizedBox(height: 8.0),
            Text(
              "Class Link",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            InkWell(
              child: Text(
                "Class", // Link to the class
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {
                // Implement navigation to the class here
              },
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    // Handle reschedule action
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  child: Text("RESCHEDULE"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle booking action
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                  ),
                  child: Text("BOOK"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
