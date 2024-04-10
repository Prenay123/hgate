import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed; // Make onPressed nullable

  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(
              255, 31, 95, 115), // Set background color to blue
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white, // Set text color to white
        ),
      ),
    );
  }
}
