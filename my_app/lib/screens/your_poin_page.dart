import 'package:flutter/material.dart';

class YourPoinPage extends StatelessWidget {
  const YourPoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Poin Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Your Poin Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
