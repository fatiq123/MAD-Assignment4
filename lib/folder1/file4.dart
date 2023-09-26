import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Custom AppBar'),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Handle search action
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            // Handle settings action
          },
        ),
      ],
    );
  }
}

class ProductListTile extends StatelessWidget {
  const ProductListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.shopping_cart),
      title: const Text('Product Name'),
      subtitle: const Text('\$99.99'),
      trailing: IconButton(
        icon: const Icon(Icons.favorite_border),
        onPressed: () {
          // Handle favorite button action
        },
      ),
    );
  }
}

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('Followers', style: TextStyle(fontSize: 18)),
            Text('1.2k', style: TextStyle(fontSize: 20)),
          ],
        ),
        Column(
          children: [
            Text('Following', style: TextStyle(fontSize: 18)),
            Text('345', style: TextStyle(fontSize: 20)),
          ],
        ),
        Column(
          children: [
            Text('Posts', style: TextStyle(fontSize: 18)),
            Text('56', style: TextStyle(fontSize: 20)),
          ],
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.grey,
      height: 1,
    );
  }
}
