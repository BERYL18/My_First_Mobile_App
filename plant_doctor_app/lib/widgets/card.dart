import 'package:flutter/material.dart';

Container card({required imagePath}) {
  return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.green[50]),
      child: Image.asset(
        imagePath,
        height: 35,
      ));
}
