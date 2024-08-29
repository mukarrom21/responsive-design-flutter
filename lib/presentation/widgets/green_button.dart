import 'package:flutter/material.dart';
class GreenButton extends StatelessWidget {
  const GreenButton({
    super.key, required this.buttonText,
  });

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 50),
        backgroundColor: Colors.greenAccent.shade400,
        // border radius
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
