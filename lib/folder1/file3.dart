import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://example.com/banner_image.jpg',
      fit: BoxFit.cover,
      height: 150,
    );
  }
}

class ProductRating extends StatelessWidget {
  const ProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.star, color: Colors.orange),
        Icon(Icons.star, color: Colors.orange),
        Icon(Icons.star, color: Colors.orange),
        Icon(Icons.star_border, color: Colors.orange),
        Icon(Icons.star_border, color: Colors.orange),
      ],
    );
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchValue,
      onChanged: (newValue) {
        setState(() {
          _switchValue = newValue;
        });
      },
    );
  }
}

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
    );
  }
}
