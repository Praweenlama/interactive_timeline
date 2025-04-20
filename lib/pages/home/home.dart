import 'package:flutter/material.dart';
import 'package:interactive_timeline/pages/home/welcome.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Align(
          alignment: Alignment.center,
          child: Text('Interactive timeline AppBar'),
        ),
      ),
      body: WelcomeText(),
    );
  }
}
