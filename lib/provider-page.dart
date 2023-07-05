import 'package:flutter/material.dart';
import 'package:provider_project/widget/provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
        backgroundColor: const Color.fromARGB(255, 3, 32, 101),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 3, 32, 101),
              Color.fromARGB(255, 66, 127, 197)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    constraints:
                        const BoxConstraints(maxHeight: 40, maxWidth: 40),
                    child: const TextField(
                        decoration: InputDecoration(
                            counterText: '',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                        keyboardType: TextInputType.number)),
              ],
            ),
            const SizedBox(
              width: 10,
              height: 10,
            ),
            const Text('Output')
          ],
        ),
      ),
    );
  }
}
