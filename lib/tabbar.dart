import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar Title"),
          bottom: const TabBar(tabs: [
            Tab(
              text: "Text 1",
            ),
            Tab(
              text: "Text 2",
            ),
            Tab(
              text: "Text 3",
            )
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Tab 1 content"),
            ),
            Center(
              child: Text("Tab 2 content"),
            ),
            Center(
              child: Text("Tab 3 content"),
            ),
          ],
        ),
      ),
    );
  }
}
