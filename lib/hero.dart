import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ));
        },
        child: const Hero(
            tag: 'imageTag',
            child: Icon(Icons
                .spa_rounded) /*Image.asset('assets/image.png'),*/ // Replace with your image
            ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: const Center(
        child: Hero(
          tag: 'imageTag',
          child: Icon(Icons
              .home)/*Image.asset('assets/image.png')*/, // Replace with your image
        ),
      ),
    );
  }
}
