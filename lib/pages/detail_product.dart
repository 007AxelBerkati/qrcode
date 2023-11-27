import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  const DetailProductPage(this.id, this.data, {super.key});

  final String id;

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Detail Product')),
      body: Center(
        child: Text(data.toString()),
      ),
    ));
  }
}
