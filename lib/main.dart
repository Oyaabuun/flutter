import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

// The main function is the entry point of the Flutter app.
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
             Color.fromARGB(255, 7, 66, 2),
             Color.fromARGB(255, 54, 151,29)), // This is the constructor for the GradientContainer class.
      ),
    ),
  );
}

/*
Key Concepts:
- MaterialApp: The root widget of your application.
- Scaffold: Provides a basic structure for the visual interface, like the app bar, body, etc.
- GradientContainer: A custom widget that you created, which handles the gradient background.
- runApp: Starts the Flutter application and inflates the given widget.
*/
