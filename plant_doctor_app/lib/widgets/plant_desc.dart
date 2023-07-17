import 'package:flutter/material.dart';

Container plantDesc() {
  return Container(
      height: 130,
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(children: [
        Row(
          children: const [
            Text("Moringa",
                style: TextStyle(
                    color: Color.fromARGB(255, 107, 107, 107),
                    fontSize: 36,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 195,
              child: Wrap(
                children: const [
                  Text(
                      "As we all know all plants need cholorophyll and use photosynthesis to produce their food.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 48, 48, 48),
                        fontSize: 16,
                      )),
                ],
              ),
            )
          ],
        )
      ]));
}
