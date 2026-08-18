import'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Button and Snackbar'),
      ),
      body: Center(
        child: Builder(
          builder: (context) => ElevatedButton(
            onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Hello Snackbar!')),
              );
            },
            child: Text('Show Snackbar'),
          ),
        ),
      ),
    ),
  ));
}
