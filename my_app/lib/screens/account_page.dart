import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Page"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Account Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
