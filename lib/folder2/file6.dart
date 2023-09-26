import 'package:flutter/material.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return Image.network(
          'https://example.com/photo_$index.jpg',
          fit: BoxFit.cover,
        );
      },
    );
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person),
        title: const Text('John Doe'),
        subtitle: const Text('johndoe@example.com'),
        trailing: IconButton(
          icon: const Icon(Icons.phone),
          onPressed: () {
            // Handle phone call action
          },
        ),
      ),
    );
  }
}

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: 0.6, // Set the progress value between 0 and 1.
      backgroundColor: Colors.grey[300],
    );
  }
}

/*
class ProductCarousel extends StatelessWidget {
  const ProductCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.network('https://example.com/product1.jpg'),
        Image.network('https://example.com/product2.jpg'),
        Image.network('https://example.com/product3.jpg'),
      ],
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
      ),
    );
  }
}
*/
