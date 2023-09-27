import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column Widget"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  SnackBar(
                    content: const Text("snackbar!"),
                    action: SnackBarAction(
                        label: "This is snackbar",
                        onPressed: () {
                          // TODO do something here.
                        }),
                  );
                },
                child: const Text("Outlined Button")),
            ElevatedButton(
                onPressed: () {}, child: const Text("Elevated Button")),
            TextButton(onPressed: () {}, child: const Text("Text Button")),
          ],
        ),
      ),
    );
  }
}
