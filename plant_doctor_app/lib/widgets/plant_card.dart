import 'package:flutter/material.dart';
import 'package:plant_doctor_app/widgets/plant_stats.dart';

Flexible plantCard() {
  return Flexible(
      child: Column(children: [
    Container(
      width: 170,
      height: 250,
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: 5,
                offset: const Offset(0, 3),
                color:
                    const Color.fromARGB(255, 221, 221, 221).withOpacity(0.5))
          ],
          border:
              Border.all(width: 2, color: Color.fromARGB(255, 243, 243, 243)),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Image.asset("lib/assets/plant2.png", width: 150, height: 125),
          const SizedBox(height: 10),
          const Text("Moringa",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Text("Moriga moringus", style: TextStyle(fontSize: 16)),
          const SizedBox(height: 5),
          const Divider(thickness: 1, color: Colors.grey),
          stats("Tropical", "Shrub", "70-120cm")
        ],
      ),
    )
  ]));
}
