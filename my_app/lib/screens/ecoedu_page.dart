import 'package:flutter/material.dart';

class EcoEduPage extends StatelessWidget {
  const EcoEduPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EcoEdu Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome to EcoEdu Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
