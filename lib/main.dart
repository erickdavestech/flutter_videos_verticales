import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLone Toktik App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clone TokTok '),
        ),
        body: const Center(
          child: Text('Hi Im Daves'),
        ),
      ),
    );
  }
}
