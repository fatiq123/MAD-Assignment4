import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert Dialog"),
          content: const Text("This is an example of Alert Dialog"),
          actions: [
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Ok"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text("Alert Dialog!"),
        ),
      ),
    );
  }
}
