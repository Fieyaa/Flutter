//Exercise 10: Display an image from the network.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ImageScreen(),
  ));
}

// Main widget for the network image example
class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Image'), // Title of the AppBar
      ),
      body: Center(
        child: Image.network(
          'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80', // URL of the network image
        ),
      ),
    );
  }
}
