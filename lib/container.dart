import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: const Text(
            "Hello, Container!",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
