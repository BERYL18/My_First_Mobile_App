import 'package:flutter/material.dart';
import 'package:plant_doctor_app/widgets/card.dart';

Column authOption() {
  return Column(
    children: [
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: const [
              Expanded(
                  child: Divider(
                thickness: 0.5,
                color: Colors.white,
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Or continue with",
                    style:
                        TextStyle(color: Color.fromARGB(255, 213, 241, 214))),
              ),
              Expanded(
                  child: Divider(
                thickness: 0.5,
                color: Colors.white,
              ))
            ],
          )),
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          card(imagePath: "lib/assets/apple.png"),
          const SizedBox(width: 10),
          card(imagePath: "lib/assets/google.png"),
          const SizedBox(width: 10),
          card(imagePath: "lib/assets/twitter.png"),
          const SizedBox(width: 10)
        ],
      ),
      const SizedBox(height: 20),
    ],
  );
}
