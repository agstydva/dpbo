import 'package:flutter/material.dart';

class DiscussionPage extends StatelessWidget {
  const DiscussionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Discussion Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Discussion Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
