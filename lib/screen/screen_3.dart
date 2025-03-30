import 'package:flutter/material.dart';

// ignore: camel_case_types
class Screen_3 extends StatelessWidget {
  const Screen_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Screen')),
      body: const Center(
        child: Text(
          'This is a new screen 3',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}