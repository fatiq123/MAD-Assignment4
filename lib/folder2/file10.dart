import 'package:flutter/material.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final double starSize;

  const CustomRatingBar({super.key, required this.rating, this.starSize = 24.0});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star_border,
          size: starSize,
          color: Colors.yellow,
        );
      }),
    );
  }
}

class CustomPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text('Page 1', style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
        Container(
          color: Colors.green,
          child: const Center(
            child: Text('Page 2', style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
        Container(
          color: Colors.orange,
          child: const Center(
            child: Text('Page 3', style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Open image picker dialog
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.grey[200],
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}

/*
class CustomVideoPlayer extends StatelessWidget {
  const CustomVideoPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return VideoPlayerController.network(
      'https://example.com/sample_video.mp4',
      aspectRatio: 16 / 9,
    );
  }
}
*/
