import 'package:flutter/material.dart';

class MyClassRequestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const const Text('My Class Requests'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // New Requests section
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_image.jpg'),
                  ),
                  title: Text('Full Name'),
                  subtitle: Text('Proposed: Requested Class Date'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Implement navigation to the calendar or date details here
                  },
                ),
                // Add more ListTile items for New Requests as needed
              ],
            ),
          ),
          Divider(), // Add a divider between sections
          Expanded(
            child: ListView(
              children: [
                // Rescheduled section
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile_image.jpg'),
                  ),
                  title: Text('Full Name'),
                  subtitle: Text('New Time: Requested Class Date'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Implement navigation to the calendar or date details here
                  },
                ),
                // Add more ListTile items for Rescheduled as needed
              ],
            ),
          ),
          // "No booked students yet" or "You don't have any class requests yet" text
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                'No booked students yet',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
