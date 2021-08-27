import 'package:flutter/material.dart';
import 'package:hello_flutter/counter_page.dart';
import 'package:hello_flutter/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CounterPage()
    );
  }
}