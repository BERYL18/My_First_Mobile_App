import 'package:flutter/material.dart';
import 'package:plant_doctor_app/widgets/feature.dart';
import 'package:plant_doctor_app/widgets/plant_desc.dart';

SizedBox features() {
  return SizedBox(
      height: 240,
      child: Stack(children: [
        Positioned(child: plantDesc()),
        Positioned(
            top: 0,
            left: 200,
            child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset("lib/assets/plant2.png",
                    width: 190, height: 230))),
        Positioned(
          top: 170,
          child: Row(children: const [
            Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Plant Features",
                  style: TextStyle(
                      color: Color.fromARGB(255, 107, 107, 107),
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ))
          ]),
        ),
        Positioned(
            top: 210,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                const SizedBox(height: 15),
                feature(Icons.map_outlined, "Tropical"),
                const SizedBox(height: 10),
                feature(Icons.merge_type, "Shrub"),
                const SizedBox(height: 10),
                feature(Icons.height_rounded, "70-120cm"),
              ],
            ))
      ]));
}
