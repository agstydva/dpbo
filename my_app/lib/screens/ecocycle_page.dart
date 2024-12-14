import 'package:flutter/material.dart';

class EcoCyclePage extends StatelessWidget {
  const EcoCyclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EcoCycle Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome to EcoCycle Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
