import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: Center(
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.album),
                title: Text("Title of the card"),
                subtitle: Text("Sub-title of card"),
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Button 1")),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Button 2"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
