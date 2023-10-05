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
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign Up",
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
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Username",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter full name",
                      ),
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
                      image: AssetImage('user.png'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  "Add Profile Picture",
                  style: TextStyle(
                    color: Color(0xFF007ACC),
                  ),
                ),
                SizedBox(height: 24.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your sign-up logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF007ACC),
                    onPrimary: Colors.white,
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
