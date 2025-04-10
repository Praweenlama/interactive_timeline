import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Timeline')),
      body: Align(
        alignment: Alignment.topLeft,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text('Hello World from the Home Page!'),
        ),
      ),
    );
  }
}
