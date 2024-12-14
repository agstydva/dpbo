import 'package:flutter/material.dart';

class YourPoinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Poin Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to Your Poin Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
