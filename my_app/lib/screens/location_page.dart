import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Page"),
      ),
      body: Center(
        child: Text(
          "Welcome to Location Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
