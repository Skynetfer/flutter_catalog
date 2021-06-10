import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          'Login Page',
          style: TextStyle(
              //change size in text
              fontSize: 42.0,
              //change color in text
              color: Colors.greenAccent,
              //change font bold
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
