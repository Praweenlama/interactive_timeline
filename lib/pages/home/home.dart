import 'package:flutter/material.dart';
import 'package:interactive_timeline/pages/counter/counter.dart';
import 'package:interactive_timeline/pages/home/welcome.dart';
import 'package:interactive_timeline/widgets/button/button.dart';
import 'package:interactive_timeline/widgets/text/text_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void toCounter(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyCounter()),
    );
  }

  void toInput(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const InputText()),
    );
  }

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WelcomeText(),
            MyButton(
              buttonText: 'Navigate me to InputText',
              onPressed: () => toInput(context),
            ),
            MyButton(
              buttonText: 'Navigate me to Counter Page',
              onPressed: () => toCounter(context),
            ),
          ],
        ),
      ),
    );
  }
}
