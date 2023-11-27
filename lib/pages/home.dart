import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode/routes/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Home')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      context.goNamed(Routes.products);
                    },
                    child: const Text("Products")),
                ElevatedButton(
                    onPressed: () {
                      context.goNamed(Routes.settings);
                    },
                    child: const Text("settings"))
              ],
            ),
          )),
    );
  }
}
