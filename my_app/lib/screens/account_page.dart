import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to Account Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
