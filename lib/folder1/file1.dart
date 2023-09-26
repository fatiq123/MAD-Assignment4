import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Button action goes here
      },
      child: const Text('Custom Button'),
    );
  }
}

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 4.0,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://example.com/user_profile.jpg'),
        ),
        title: Text('John Doe'),
        subtitle: Text('Software Developer'),
      ),
    );
  }
}

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Icon(Icons.cloud, size: 48),
        Text('Cloudy', style: TextStyle(fontSize: 18)),
        Text('72°F', style: TextStyle(fontSize: 24)),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Card(
        child: Column(
          children: [
            Image.network('https://example.com/product_image.jpg'),
            const Text('Product Name', style: TextStyle(fontSize: 16)),
            const Text('\$99.99', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
