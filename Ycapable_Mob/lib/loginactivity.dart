import 'package:flutter/material.dart';

class LoginActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Login'),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Numeric Password',
                hintText: 'Enter your numeric password',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your login logic here
              },
              child: Text('LOG IN'),
            ),
            SizedBox(height: 20),
            Text('FORGOT PASSWORD?'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your signup logic here
              },
              child: Text('SIGNUP'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginActivity(),
  ));
}
