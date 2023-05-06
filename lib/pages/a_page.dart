import 'package:flutter/material.dart';

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A Page StatelessWidget'),
      ),
      body: const Center(
        child: Text('abc'),
      ),
    );
  }
}
