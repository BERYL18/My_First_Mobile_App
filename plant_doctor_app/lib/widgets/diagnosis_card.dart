import 'package:flutter/material.dart';

Container diagnosisCard(
    String img, String name, String prob, String date, String time) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 7,
              spreadRadius: 5,
              offset: const Offset(0, 3),
              color: const Color.fromARGB(255, 221, 221, 221).withOpacity(0.5))
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10.0))),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    child: Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          child: Image.asset(img),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: Column(
          children: [
            Row(children: [
              Text(name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18))
            ]),
            Row(children: [Text(prob)])
          ],
        )),
        Column(
          children: [
            Text(date),
            Text(time),
          ],
        ),
        const SizedBox(width: 15),
        Column(
          children: const [Icon(Icons.more_vert)],
        )
      ],
    ),
  );
}
