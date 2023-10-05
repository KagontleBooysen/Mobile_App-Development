import 'package:flutter/material.dart';

class AvailableActivity2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Available Classes"),
        backgroundColor: Color(0xFFE9ECEF),
        actions: [
          // Add any app bar actions here
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Available Classes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Based on your interests.",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF888888),
                ),
              ),
            ),
            ClassItem(
              imageName: 'user',
              className: 'Class Name 1',
              instructorName: 'Instructor Name 1',
            ),
            ClassItem(
              imageName: 'yg',
              className: 'Class Name 2',
              instructorName: 'Instructor Name 2',
            ),
            ClassItem(
              imageName: 'planning',
              className: 'Class Name 3',
              instructorName: 'Instructor Name 3',
            ),
          ],
        ),
      ),
    );
  }
}

class ClassItem extends StatelessWidget {
  final String imageName;
  final String className;
  final String instructorName;

  ClassItem({
    required this.imageName,
    required this.className,
    required this.instructorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            'assets/$imageName.png', // Assuming your images are in the assets folder
            width: 80,
            height: 80,
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                className,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                instructorName,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF888888),
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward,
            size: 24,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AvailableActivity2(),
  ));
}
