import 'package:flutter/material.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Article Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Article Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
