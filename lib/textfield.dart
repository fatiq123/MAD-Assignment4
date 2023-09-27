import 'package:flutter/material.dart';

class TextField extends StatefulWidget {
  const TextField({super.key});

  @override
  State<TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              
            ),
          ],
        ),
      ),
    );
  }
}


class ObscuredTextField extends StatelessWidget {
  const ObscuredTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(

      ),
    );
  }
}
