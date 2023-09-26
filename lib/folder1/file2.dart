import 'package:flutter/material.dart';

class ColorfulCard extends StatelessWidget {
  const ColorfulCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Blue Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Product ${index + 1}'),
          subtitle: Text('\$${(index + 1) * 10}'),
          leading: const Icon(Icons.shopping_cart),
          onTap: () {
            // Add product to cart logic
          },
        );
      },
    );
  }
}

class UserProfileAvatar extends StatelessWidget {
  const UserProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage('https://example.com/user_avatar.jpg'),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        labelText: 'Enter your text',
        border: OutlineInputBorder(),
      ),
    );
  }
}
