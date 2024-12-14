import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Company Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Company Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
