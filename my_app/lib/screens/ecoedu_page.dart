import 'package:flutter/material.dart';

class EcoEduPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EcoEdu Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to EcoEdu Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
