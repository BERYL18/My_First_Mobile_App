import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/pages/plant_page.dart';
import 'package:plant_doctor_app/pages/profile_page.dart';
import 'package:plant_doctor_app/widgets/bottom_nav.dart';
import 'package:plant_doctor_app/widgets/plant_card.dart';
import 'package:plant_doctor_app/widgets/search_field.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.left_chevron),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
            child: Text("Plant Doctor", style: TextStyle(fontSize: 26))),
        actions: [
          const Icon(CupertinoIcons.bell_fill),
          const SizedBox(width: 20),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              icon: const Icon(CupertinoIcons.profile_circled)),
          const SizedBox(width: 20),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            searchField(),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 10, bottom: 15),
                  child: Text("Explore Plants",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 110, 109, 109))),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 15.0,
                  runSpacing: 15.0,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PlantPage()));
                      },
                      child: plantCard(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 236, 245, 235),
    );
  }
}
