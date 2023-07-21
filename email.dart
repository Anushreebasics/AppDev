import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50), // Add some space at the top for the logo
          Image.asset(
            'assets/images/logo.jpg', // Replace with the actual path of your logo image
            height: 100,
            width: 100,
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            obscureText: true, // This hides the entered text
            decoration: InputDecoration(
              fillColor: Colors.grey.shade100,
              filled: true,
              hintText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: 20, width: 50),
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {},
              child: Text('Login'),
            ),
          )
        ],
      ),
    );
  }
}
