import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: new Center(
        child: Image.asset('assets/images/img_2_01.jpeg'),
      ),
    );
  }
}