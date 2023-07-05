import 'package:flutter/material.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Provider')),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blueAccent,
          const Color.fromARGB(255, 86, 164, 227)
        ])),
      ),
    );
  }
}
