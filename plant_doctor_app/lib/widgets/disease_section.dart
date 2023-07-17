import 'package:flutter/material.dart';
import 'package:plant_doctor_app/widgets/disease_card.dart';
import 'package:plant_doctor_app/widgets/disease_card2.dart';

Container diseaseSection() {
  return Container(
    margin: const EdgeInsets.only(left: 15, right: 15),
    child: Column(
      children: [
        Row(
          children: const [
            Text(
              "Common Diseases",
              style: TextStyle(
                  color: Color.fromARGB(255, 107, 107, 107),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 25.0,
          runSpacing: 15.0,
          children: const [
            DiseaseCard(),
            DiseaseCard2(),
            DiseaseCard(),
            DiseaseCard2(),
            DiseaseCard(),
            DiseaseCard2(),
          ],
        )
      ],
    ),
  );
}


              // diseaseCause: diseases[i]["name"],
              // diseaseName: diseases[i]["symptoms"],
              // diseaseSym: diseases[i]["causes"],
              // imagePath: diseases[i]["image"],
