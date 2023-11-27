import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qrcode/routes/router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.goNamed(Routes.home);
                },
                child: const Text('GO TO Home'))
          ],
        )),
      ),
    );
  }
}
