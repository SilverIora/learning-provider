import 'package:flutter/material.dart';

class PinEntry extends StatelessWidget {
  const PinEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        constraints: const BoxConstraints(maxHeight: 40, maxWidth: 40),
        child: const TextField(
            decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)))),
            maxLength: 1,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
            keyboardType: TextInputType.number));
  }
}
