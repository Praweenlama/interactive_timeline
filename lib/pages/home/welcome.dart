import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to the Responsive Timeline Project',
      style: TextStyle(color: Colors.blue),
    );
  }
}
