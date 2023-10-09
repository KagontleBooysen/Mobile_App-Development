import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CreateClassActivity(),
  ));
}

class CreateClassActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Your Class",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Class type",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Select Class Type",
                      ),
                      keyboardType: TextInputType.text, // Use TextInputType.text
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Class name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter class name",
                      ),
                      obscureText: false, // Set to false
                    ),
                  ],
                ),
                // Profile User Image (Centered)
                Container(
                  child: Center(
                    child: Image.asset(
                      'assets/class_image.png', // Replace with your class image path
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 16.0),
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Class Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Describe the class here",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Class Proficiency",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Indicate if you are a beginner, intermediate, or otherwise",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Class Requirements",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "i.e. your laptop and instruments",
                      ),
                      keyboardType: TextInputType.text, // Use TextInputType.text
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Container(
                  width: 120.0,
                  height: 120.0,
                  margin: EdgeInsets.only(top: 16.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/class.png'), // Correct the image path
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "How many years of experience do you have?",
                  style: TextStyle(
                    color: Color(0xFF007ACC),
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // The class must be a subject the creator is either really familiar with, or has had some knowledge in it
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF007ACC),
                    onPrimary: Colors.white,
                  ),
                  child: Text("CREATE CLASS"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
