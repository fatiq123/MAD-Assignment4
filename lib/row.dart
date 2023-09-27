import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row Widget"),
      ),
      body: Row(
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
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
