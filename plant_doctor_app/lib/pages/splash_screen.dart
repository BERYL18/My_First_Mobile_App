import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/pages/explore_page.dart';
import '../widgets/main_logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Widget goButton = IconButton(
      icon: const Icon(CupertinoIcons.arrow_right_circle_fill,
          color: Color.fromARGB(255, 35, 104, 36)),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ExplorePage()));
      },
      iconSize: 85,
      isSelected: null,
    );
    return Scaffold(
        body: Container(
            height: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: ListView(
              children: [
                mainLogo("A healthier plant, a safer earth",
                    "lib/assets/logo.png", "lib/assets/pal.png"),
                const SizedBox(height: 30),
                goButton
              ],
            )));
  }
}
