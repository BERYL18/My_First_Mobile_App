import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/pages/edit_page.dart';
import 'package:plant_doctor_app/pages/login_page.dart';
import 'package:plant_doctor_app/widgets/bottom_nav.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:plant_doctor_app/widgets/diagnosis_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(children: [
              Center(child: Image.asset("lib/assets/pal.png")),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(children: const [
                    Text("Profile",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.bold))
                  ])),
              Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Row(children: const [
                        Text("User Information",
                            style: TextStyle(
                                fontSize: 24,
                                color: Color.fromARGB(255, 80, 132, 77),
                                fontWeight: FontWeight.bold))
                      ])),
                  const SizedBox(height: 10),
                  Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Column(
                        children: [
                          Row(children: const [
                            Icon(
                              CupertinoIcons.person_fill,
                              color: Color.fromARGB(255, 105, 105, 105),
                            ),
                            SizedBox(width: 20),
                            Text("username",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 105, 105, 105)))
                          ]),
                          const SizedBox(height: 10),
                          Row(children: const [
                            Icon(
                              CupertinoIcons.envelope_fill,
                              color: Color.fromARGB(255, 105, 105, 105),
                            ),
                            SizedBox(width: 20),
                            Text("username@gmail.com",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 105, 105, 105)))
                          ]),
                          const SizedBox(height: 10),
                          Row(children: const [
                            Icon(
                              CupertinoIcons.briefcase_fill,
                              color: Color.fromARGB(255, 105, 105, 105),
                            ),
                            SizedBox(width: 20),
                            Text("occupation",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 105, 105, 105)))
                          ]),
                          const SizedBox(height: 10),
                          Row(children: const [
                            Icon(CupertinoIcons.phone_fill,
                                color: Color.fromARGB(255, 105, 105, 105)),
                            SizedBox(width: 20),
                            Text("+237 6723792349",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 105, 105, 105)))
                          ]),
                        ],
                      )),
                  const SizedBox(height: 40),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        FirebaseAuth.instance.signOut();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginPage()));
                                      },
                                      child: Row(
                                        children: const [
                                          Icon(Icons.logout_rounded),
                                          SizedBox(width: 15),
                                          Text("Sign Out",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18))
                                        ],
                                      ))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(width: 30),
                          Column(
                            children: [
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const EditProfile()));
                                      },
                                      child: Row(
                                        children: const [
                                          Icon(Icons.edit),
                                          SizedBox(width: 15),
                                          Text("Edit Info",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18))
                                        ],
                                      ))
                                ],
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 20),
                  child: Row(children: const [
                    Text("Registered Diagnosis",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.bold))
                  ])),
              const SizedBox(height: 20),
              diagnosisCard("lib/assets/disease1.jpeg", "Tulip Flower",
                  "Brown spots and wilting", "today", "1s ago"),
              const SizedBox(height: 10),
              diagnosisCard("lib/assets/plant3.png", "Tomato Plant",
                  "Brown spots and wilting", "today", "1hr ago"),
              const SizedBox(height: 10),
              diagnosisCard("lib/assets/disease1.jpeg", "Moringa moringus",
                  "Brown spots and wilting", "01/05/23", "23:15"),
              const SizedBox(height: 10),
              diagnosisCard("lib/assets/plant2.png", "Aloe Vera",
                  "Brown spots and wilting", "27/02/23", "03:15"),
              const SizedBox(height: 10),
              diagnosisCard("lib/assets/disease1.jpeg", "Sun Flower",
                  "Brown spots and wilting", "05/01/23", "12:15"),
              const SizedBox(height: 10),
            ])),
      )),
      backgroundColor: const Color.fromARGB(255, 236, 245, 235),
    );
  }
}
