import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to Article Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
