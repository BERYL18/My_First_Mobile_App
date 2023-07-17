import 'package:flutter/material.dart';

Column logo(String title, String subtitle, String image) {
  return Column(
    children: [
      Image.asset(image, height: 90),
      const SizedBox(height: 20),
      Text(title,
          style: const TextStyle(
              fontSize: 38, fontWeight: FontWeight.bold, color: Colors.green)),
      const SizedBox(height: 10),
      Text(
        subtitle,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 124, 181, 126)),
      ),
      const SizedBox(height: 30)
    ],
  );
}
