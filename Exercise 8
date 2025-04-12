//*Add a custom font to your Flutter app and use it in a Text
//*widget.

// First, add your custom font files to your Flutter project and update
// pubspec.yaml to include them.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomFontScreen(),
  ));
}

class CustomFontScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Font Example'),
      ),
      body: Center(
        child: Text(
          'This is a custom font!',
          style: TextStyle(fontFamily: 'YourCustomFont', fontSize: 24),
        ),
      ),
    );
  }
}
