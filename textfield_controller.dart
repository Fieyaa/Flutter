//Exercise 11: Create a TextField and use a TextEditingController to retrieve its value when a button is pressed.

import'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TextFieldScreen(),
  ));
}

// Main widget for the text field example
class TextFieldScreen extends StatefulWidget {
  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showValue() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(_controller.text),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'), // Title of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                  labelText: 'Enter Something'), // Label text for the TextField
            ),
            SizedBox(height: 20), // Spacer between TextField and ElevatedButton
            ElevatedButton(
              onPressed: _showValue,
              child: Text('Click Here'),
            ),
          ],
        ),
      ),
    );
  }
}
