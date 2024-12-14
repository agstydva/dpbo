import 'package:flutter/material.dart';

class DiscussionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discussion Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to Discussion Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
