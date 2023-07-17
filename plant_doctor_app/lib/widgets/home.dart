import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/pages/about_page.dart';
import 'package:plant_doctor_app/pages/diagnosis_page.dart';
import 'package:plant_doctor_app/pages/explore_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> screens = [
    const ExplorePage(),
    const DiagnosisPage(),
    const AboutPage()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currentIndex,
          backgroundColor: const Color.fromARGB(255, 236, 245, 235),
          iconSize: 32,
          fixedColor: Colors.green,
          elevation: 10.0,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.leaf_arrow_circlepath),
                label: "Explore",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken_outlined),
                label: "Diagnosis",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.info_circle),
                label: "About",
                backgroundColor: Colors.green),
          ],
        ));
  }
}
