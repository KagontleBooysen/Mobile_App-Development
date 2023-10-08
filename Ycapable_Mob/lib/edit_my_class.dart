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
          title: Text("Edit My Class"),
          centerTitle: true, // Center the title
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ClassEditForm(),
        ),
      ),
    );
  }
}

class ClassEditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Class Type"),
            DropdownButton(
              onChanged: (value) {
                // Handle dropdown selection
              },
              items: [
                DropdownMenuItem(
                  value: "Option 1",
                  child: Text("Option 1"),
                ),
                DropdownMenuItem(
                  value: "Option 2",
                  child: Text("Option 2"),
                ),
              ],
              hint: Text("Select Class Type..."), // Hint for dropdown
              value: null, // Set value to null to hide the text
            ),

            SizedBox(height: 16.0), // Add spacing between sections
            Text("Class Name"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Class Name",
              ),
            ),
            SizedBox(height: 16.0), // Add spacing between sections
            Text("Image"),
            InkWell(
              onTap: () {
                // Handle image selection
              },
              child: Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Choose Photo",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.0), // Add spacing between sections
            Text("Class Description"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Class Description",
              ),
            ),
            SizedBox(height: 16.0), // Add spacing between sections
            Text("Class Proficiency"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Class Proficiency",
              ),
            ),
            SizedBox(height: 16.0), // Add spacing between sections
            Text("Teacher Notes"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Teacher Notes",
              ),
            ),
            SizedBox(height: 16.0), // Add spacing between sections
            Text("Teacher Years of Experience"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Teacher Years of Experience",
              ),
            ),
            SizedBox(height: 50.0, width: 500.0), // Add spacing between sections
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle update class action
                },
                child: Text("Update Class"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
