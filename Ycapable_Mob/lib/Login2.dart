import 'package:flutter/material.dart';

class SignupActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Align content at the top
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Login",
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
                      "Email",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter email",
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter password",
                      ),
                      obscureText: true,
                    ),
                  ],
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF007ACC),
                    onPrimary: Colors.white,
                      minimumSize: Size(double.infinity, 40.0)
                  ),
                  child: Text("Login"),
                ),
                SizedBox(height: 16.0),//Adding space
                GestureDetector(
                  onTap: () {
                    // Add your forgot password logic here
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Color(0xFF007ACC),
                      fontSize: 12.0,
                    ),
                  ),
                ),
                SizedBox(height: 70.0), // Add this line to create space
                ElevatedButton(
                  onPressed: () {
                    // Add your sign-up logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Color(0xFF007ACC),
                    minimumSize: Size(double.infinity, 40.0), // Set the width and height here
                  ),
                  child: Text("Sign Up"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignupActivity(),
  ));
}
