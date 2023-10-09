import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyClassPage extends StatelessWidget {
  final String className;

  MyClassPage({required this.className});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class $className'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text('Status: Pending'),
                ),
                ListTile(
                  title: Text('Requested Date'),
                ),
                ListTile(
                  title: Text('Requested Class Date'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text('Status: Rescheduled'),
                ),
                ListTile(
                  title: Text('Full Name wants to reschedule'),
                ),
                ListTile(
                  title: ElevatedButton.icon(
                    onPressed: () {
                      // Add logic to handle reschedule comment button press.
                    },
                    icon: Icon(Icons.comment),
                    label: Text('Reschedule Comment'),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text('Status: Booked!'),
                ),
                ListTile(
                  title: Text('Scheduled Date'),
                ),
                ListTile(
                  title: Text('Requested Class Date'),
                ),
                ListTile(
                  title: Text('Video Link'),
                ),
                ListTile(
                  title: InkWell(
                    onTap: () {
                      // Add logic to handle link click.
                    },
                    child: Text(
                      'The teacher will provide you with a video chat link here',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: ElevatedButton(
                    onPressed: () {
                      // Add logic to handle Join Meeting button press.
                    },
                    child: Text('Join Meeting'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyClassPage(className: 'class name'),
    );
  }
}
