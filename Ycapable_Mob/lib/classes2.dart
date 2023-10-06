import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Young&Capable'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'y.png', // Replace with your app logo image path
                    width: 150.0,
                    height: 150.0,
                  ),
                ),
                SizedBox(height: 0.0), // Add spacing below the logo image
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'user.png', // Replace with your image path
                    width: 100.0,
                    height: 100.0,
                  ),
                ),
                SizedBox(height: 10.0), // Add spacing below the second image
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Full Name',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(height: 10.0), // Add spacing between "Full Name" and "Email"
                    Text(
                      'Email',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                SizedBox(height: 20.0, width: 500.0,), // Add spacing between the two sections
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Classes Taken',
                          style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0), // Add spacing between "Classes Taken" and "Count"
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Align "Count" to the right
                          children: <Widget>[
                            Text(
                              'Count',
                              style: TextStyle(fontSize: 18.0),
                            ),
                            // Add any additional widgets you need here
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 400.0), // Add spacing between classes and "Interested in"
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Classes Taken',
                          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Count', // Replace with your count value
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.0), // Add spacing below classes and "Interested in"
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Interested in',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 700.0), // Add spacing between "Interested in" and "EDIT"
                    Text(
                      'EDIT',
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 40.0), // Add spacing below "Interested in"
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                    children: <Widget>[
                      Text(
                        'Classes Type name',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Available Classes: Class count',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0), // Add spacing between class type sections
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                    children: <Widget>[
                      Text(
                        'Another Type name',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Available Classes: Class count',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0), // Add spacing before the last "Classes Type name"
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                    children: <Widget>[
                      Text(
                        'Last Type name',
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Available Classes: Class count',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 90.0), // Add spacing before buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Handle left button click
                      },
                      child: Text('Left Button'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150.0, 50.0), // Set width and height for the button
                      ),
                    ),
                    SizedBox(width: 100.0), // Add spacing between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Handle right button click
                      },
                      child: Text('Right Button'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(150.0, 50.0), // Set width and height for the button
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 300.0), // Add spacing between buttons and tab bar
                // Add the tab bar below
                Container(
                  alignment: Alignment.bottomCenter,
                  color: Color(0xFF007ACC), // Set the background color here
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TabItem(icon: Icons.class_, text: 'Classes'),
                      TabItem(icon: Icons.book, text: 'Learn'),
                      TabItem(icon: Icons.school, text: 'Teach'),
                      TabItem(icon: Icons.person, text: 'Profile'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final IconData icon;
  final String text;

  TabItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          icon,
          size: 48.0,
          color: Colors.white,
        ),
        SizedBox(height: 4.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
