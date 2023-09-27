import 'package:flutter/material.dart';

class
CustomAnimatedButton extends StatefulWidget {
  const CustomAnimatedButton({super.key});

  @override
  _CustomAnimatedButtonState createState() => _CustomAnimatedButtonState();
}

class _CustomAnimatedButtonState extends State<CustomAnimatedButton> {
  bool _isLoading = false;

  void _handleButtonPress() {
    setState(() {
      _isLoading = true;
    });

    // Simulate an asynchronous operation
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isLoading ? null : _handleButtonPress,
      child: _isLoading
          ? const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      )
          : const Text('Submit'),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Expansion Tile'),
      children: [
        ListTile(
          title: const Text('Option 1'),
          onTap: () {
            // Handle option 1
          },
        ),
        ListTile(
          title: const Text('Option 2'),
          onTap: () {
            // Handle option 2
          },
        ),
      ],
    );
  }
}

class CustomScrollingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Text(
        'This is a long scrolling text. ' * 20,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class CustomImageGallery extends StatelessWidget {
  const CustomImageGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return Image.network(
          'https://example.com/image_$index.jpg',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
