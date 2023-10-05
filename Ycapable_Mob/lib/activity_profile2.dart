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
          title: Text('My App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Toolbar with Image Logo (Centered)
              Container(
                child: Center(
                  child: Image.asset(
                    'assets/your_logo_image.png', // Replace with your logo image path
                    width: 190.0,
                    height: 100.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // App Logo (Centered)
              Container(
                child: Center(
                  child: Image.asset(
                    'assets/your_app_logo.png', // Replace with your app logo image path
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.contain,
                  ),
                ),
                margin: EdgeInsets.only(top: 16.0),
              ),

              // Profile User Image (Centered)
              Container(
                child: Center(
                  child: Image.asset(
                    'assets/user_profile_image.png', // Replace with your user profile image path
                    width: 90.0,
                    height: 90.0,
                    fit: BoxFit.contain,
                  ),
                ),
                margin: EdgeInsets.only(top: 16.0),
              ),

              // Rest of your layout components...
              // Text Views, Buttons, Tab Bar, etc.

              // "Interested in" Text with "EDIT" Button
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Interested In',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    RaisedButton(
                      onPressed: () {
                        // Add your "EDIT" button logic here
                      },
                      child: Text('EDIT'),
                    ),
                  ],
                ),
              ),

              // Containers for Class Type Information
              // You can add your class type information here

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      // Add your bottom-left button logic here
                    },
                    child: Text('EDIT PRO...'),
                  ),
                  SizedBox(width: 16.0), // Add spacing between buttons
                  RaisedButton(
                    onPressed: () {
                      // Add your bottom-right button logic here
                    },
                    child: Text('LOG OUT'),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFF007ACC),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Tab 1: Classes
              utton(
                onPressed: () {
                  // Add your tab button logic here
                },
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/classes_icon.png', // Replace with your icon image path
                      width: 48.0,
                      height: 48.0,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Classes',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              // Tab 2: Learn
              FlatButton(
                onPressed: () {
                  // Add your tab button logic here
                },
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/learn_icon.png', // Replace with your icon image path
                      width: 48.0,
                      height: 48.0,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Learn',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              // Tab 3: Teach
              FlatButton(
                onPressed: () {
                  // Add your tab button logic here
                },
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/teach_icon.png', // Replace with your icon image path
                      width: 48.0,
                      height: 48.0,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Teach',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              // Tab 4: Profile
              FlatButton(
                onPressed: () {
                  // Add your tab button logic here
                },
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/profile_icon.png', // Replace with your icon image path
                      width: 48.0,
                      height: 48.0,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
