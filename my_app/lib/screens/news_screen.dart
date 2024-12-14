import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Screen Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to News Screen Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
