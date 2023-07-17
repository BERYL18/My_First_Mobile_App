// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/pages/profile_page.dart';
import 'package:plant_doctor_app/widgets/bottom_nav.dart';
import 'package:plant_doctor_app/widgets/disease_section.dart';
import 'package:plant_doctor_app/widgets/features.dart';
import 'package:plant_doctor_app/widgets/plant_header.dart';

class PlantPage extends StatefulWidget {
  const PlantPage({Key? key}) : super(key: key);

  @override
  _PlantPageState createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
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
          child: Text(
            "Plant Doctor",
            style: TextStyle(fontSize: 26),
          ),
        ),
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.white, Colors.green],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              plantHeader(),
              Container(
                padding: const EdgeInsets.only(bottom: 50, top: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: Column(
                  children: [
                    features(),
                    const SizedBox(height: 20),
                    const SizedBox(
                        width: 350,
                        child: Divider(
                          thickness: 1,
                          color: Color.fromARGB(255, 185, 185, 185),
                        )),
                    diseaseSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 236, 245, 235),
    );
  }
}
