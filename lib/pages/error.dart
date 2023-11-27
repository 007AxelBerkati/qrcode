import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Error PAGE')),
        body: const Center(
          child: Text('Error PAGE'),
        ),
      ),
    );
  }
}
