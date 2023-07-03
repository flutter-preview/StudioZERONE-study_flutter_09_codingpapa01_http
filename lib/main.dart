import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Text('GET'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('POST'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('GET with Query'),
          ),
        ],
      ),
    );
  }
}
