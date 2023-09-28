import 'package:assignment4_mad/ListView.dart';
import 'package:assignment4_mad/card.dart';
import 'package:assignment4_mad/column.dart';
import 'package:assignment4_mad/container.dart';
import 'package:assignment4_mad/folder1/file1.dart';
import 'package:assignment4_mad/row.dart';
import 'package:assignment4_mad/switch_checkbox_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alert_dialog.dart';
import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AlertDialogWidget()
      /*TodosScreen(
        todo: List.generate(
          20,
          (index) => Todo("Todo $index",
              "A description of what needs to be done for Todo $index"),
        ),
      ),*/
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThirdRoute(),
                    ),
                  );
                },
                child: const Text("Go to Third Screen"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Go back!"))
            ],
          ),
        ));
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Third Route"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FourthRoute(),
                    ),
                  );
                },
                child: const Text("Go to Fourth Screen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Go back!"),
              )
            ],
          ),
        ));
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fourth route!"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go back!")),
      ),
    );
  }
}

/*
class CustomRoute extends StatelessWidget {
  const CustomRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Route'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: ))}, child: child),
          ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: ));}, child: child)
        ],
      )
    );
  }
}*/
