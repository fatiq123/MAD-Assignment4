import 'package:flutter/material.dart';

class Spacer extends StatelessWidget {
  const Spacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Widget 1"),
          Spacer(),
          Text("Widget 2"),
          Spacer(),
          Text("Widget 3"),
        ],
      ),
    );
  }
}
