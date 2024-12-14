import 'package:flutter/material.dart';

class EcoCyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EcoCycle Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to EcoCycle Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
