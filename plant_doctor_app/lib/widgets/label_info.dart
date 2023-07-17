import 'package:flutter/material.dart';

Padding labelInfo(String label, String description) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [
        Row(children: [
          Text(label,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green))
        ]),
        Wrap(children: [
          Text(description,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 137, 155, 137)))
        ])
      ]));
}
