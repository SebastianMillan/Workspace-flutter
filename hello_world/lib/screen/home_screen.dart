import 'package:flutter/material.dart';
import 'package:hello_world/widget/my_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first APP'),
      ),
      body: Container(alignment: Alignment.center, child: const MyButton()),
    );
  }
}
