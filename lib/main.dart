import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          child: Text('Hoc flutter trong 1 trong'),
        ),
      ),
    );
  }
}
