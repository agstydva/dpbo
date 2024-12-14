import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to Company Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
