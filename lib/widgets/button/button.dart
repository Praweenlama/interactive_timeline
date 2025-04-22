import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const MyButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: Text(widget.buttonText),
      ),
    );
  }
}
