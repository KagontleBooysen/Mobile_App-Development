import 'package:flutter/material.dart';

class TeachPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teach'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Image at the beginning
            Image.asset(
              'assets/teach_image.png', // Replace with your image path
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),

            // Text comments
            Text(
              'Want to teach a class?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'We encourage all of our First Class members to teach any class they think they are an expert in!',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),

            // "Create a class" button
            ElevatedButton(
              onPressed: () {}
                // Navigate to the page where they can create a class
                // You can implement the navigation logic here
              },
              child: Text('Create a class'),
            ),
            SizedBox(height: 16.0),

            // List of class names
            ListTile(
              leading: Icon(Icons.class_), // You can replace this with your icon
              title: Text('Class Name'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement edit class logic here
                    },
                    child: Text('Edit'),
                  ),
                  SizedBox(width: 8.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement request count logic here
                    },
                    child: Text('Request Count'),
                  ),
                ],
              ),
            ),

            // Add more ListTile items for additional classes as needed
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            label: 'Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Teach',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 2, // Index for the "Teach" page
        selectedItemColor: Colors.green, // Change to your desired color
        onTap: (int index) {
          // Implement navigation logic based on the selected tab index
          switch (index) {
            case 0:
              // Navigate to the "Classes" page
              break;
            case 1:
              // Navigate to the "Learn" page
              break;
            case 2:
              // Already on the "Teach" page
              break;
            case 3:
              // Navigate to the "Profile" page
              break;
          }
        },
      ),
    );
  }
}


           