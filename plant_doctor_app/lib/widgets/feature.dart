import 'package:flutter/cupertino.dart';

Row feature(IconData icon, String stat) {
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
    Container(
      width: 30,
      height: 30,
      margin: const EdgeInsets.only(left: 20, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 221, 221, 221)),
      child: Icon(
        icon,
        size: 18,
      ),
    ),
    Text(stat,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 113, 113, 113)))
  ]);
}
