import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyExpandedDemo(),
    );
  }
}

class MyExpandedDemo extends StatelessWidget {
  const MyExpandedDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Example'),
      ),
      body: Column(
        children: <Widget>[
          const Text('Fixed height widget'),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Expanded to fill remaining space'),
              ),
            ),
          ),
          const Text('Another fixed height widget'),
        ],
      ),
    );
  }
}
