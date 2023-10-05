import 'package:flutter/material.dart';

class MyFlatButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  MyFlatButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,
    );
  }
}

class AvailableClassesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // App Bar
              Container(
                padding: EdgeInsets.all(16.0),
                color: Color(0xFFE9ECEF),
                child: Center(
                  child: Image.asset(
                    'assets/yg.png',
                    width: 566.0,
                    height: 181.0,
                  ),
                ),
              ),

              // Content Section
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Available Classes',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'Based on your interests.',
                      style: TextStyle(
                        color: Color(0xFF888888),
                        fontSize: 12.0,
                      ),
                    ),
                    SizedBox(height: 16.0),

                    // Class Item 1
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'assets/user.png',
                          width: 80.0,
                          height: 80.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Class Name 1',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Instructor Name 1',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/next.png',
                          width: 24.0,
                          height: 24.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),

                    // Class Item 2
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'assets/yg.png',
                          width: 80.0,
                          height: 80.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Class Name 2',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Instructor Name 2',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/right.png',
                          width: 24.0,
                          height: 24.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),

                    // Class Item 3
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'assets/planning.png',
                          width: 80.0,
                          height: 80.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Class Name 3',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Instructor Name 3',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/next.png',
                          width: 24.0,
                          height: 24.0,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Tab Bar
        bottomNavigationBar: BottomAppBar(
          color: Color(0xFF007ACC),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Button on top of the tab bar
              MyFlatButton(
                onPressed: () {
                  // Your button logic here
                },
                child: Text(
                  'SEE ALL CLASSES',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              // Space between the button and the tab bar
              SizedBox(height: 16.0),
              // Tab Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  MyFlatButton(
                    onPressed: () {
                      // Add your tab button logic here
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'c.png',
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
                  MyFlatButton(
                    onPressed: () {
                      // Add your tab button logic here
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'knowledge.png',
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
                  MyFlatButton(
                    onPressed: () {
                      // Add your tab button logic here
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'training.png',
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
                  MyFlatButton(
                    onPressed: () {
                      // Add your tab button logic here
                    },
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'user.png',
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
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(AvailableClassesScreen());
}
