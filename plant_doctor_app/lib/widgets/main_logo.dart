import 'package:flutter/material.dart';

Column mainLogo(String title, String logo, String image) {
  return Column(
    children: [
      Image.asset(logo, height: 220),
      const SizedBox(height: 20),
      Image.asset(image, height: 120),
      // const SizedBox(height: 20),
      Text(title,
          style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 54, 141, 56))),
      const SizedBox(height: 10),
      const SizedBox(height: 40)
    ],
  );
}
