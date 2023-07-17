import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row searchField() {
  const controller = null;
  return Row(
    children: [
      Expanded(
          child: Container(
        height: 55,
        margin: const EdgeInsets.only(left: 15, right: 5, top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: const [
            Icon(CupertinoIcons.search, color: Color.fromARGB(255, 79, 79, 79)),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 250, 250, 250))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(10, 10)),
                              borderSide: BorderSide(color: Colors.white)),
                          fillColor: Color.fromARGB(0, 255, 255, 255),
                          filled: true,
                          hintText: "Search Plant...",
                          hintStyle: TextStyle(
                              color: Color.fromARGB(255, 79, 79, 79),
                              fontSize: 20)),
                    ))),
          ],
        ),
      )),
      Container(
        margin: const EdgeInsets.only(right: 15, top: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(12)),
        child: const Icon(
          Icons.filter_alt,
          color: Color.fromARGB(255, 70, 70, 70),
          size: 32,
        ),
      )
    ],
  );
}
