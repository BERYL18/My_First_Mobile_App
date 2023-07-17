import 'package:flutter/material.dart';

Container plantHeader() {
  return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(children: [
        Row(
          children: const [
            Text("Moringa",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Row(
          children: const [
            Text("Moringa moringus",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )),
          ],
        )
      ]));
}
