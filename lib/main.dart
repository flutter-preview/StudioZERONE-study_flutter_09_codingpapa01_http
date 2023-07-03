import 'package:flutter/material.dart';
import 'package:study_flutter_09_codingpapa01_http/dio_server.dart';

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
            onPressed: () {
              server.getReq();
            },
            child: const Text('GET'),
          ),
          ElevatedButton(
            onPressed: () {
              server.getReqAll();
            },
            child: const Text('GET All Data'),
          ),
          ElevatedButton(
            onPressed: () {
              server.postReq();
            },
            child: const Text('POST'),
          ),
          ElevatedButton(
            onPressed: () {
              server.postReqWithMap();
            },
            child: const Text('POST with Map'),
          ),
          ElevatedButton(
            onPressed: () {
              server.getReqWithQuery();
            },
            child: const Text('GET with Query'),
          ),
        ],
      ),
    );
  }
}
