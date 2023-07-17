import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/pages/diagnosis_page.dart';
import 'package:plant_doctor_app/pages/profile_page.dart';
import 'package:plant_doctor_app/widgets/signin_btn.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                    Text("About Us",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ))
                  ])),
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 206, 236, 206),
                      Color.fromARGB(77, 220, 250, 225),
                      Color.fromARGB(255, 206, 236, 206)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: [
                    Row(children: const [
                      Text("Services",
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 80, 132, 77),
                              fontWeight: FontWeight.bold))
                    ]),
                    const SizedBox(height: 10),
                    Row(children: const [
                      Text("We offer the following services:",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 105, 105, 105)))
                    ]),
                    const SizedBox(height: 10),
                    Row(children: const [
                      Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                              "- Diagnosis of Plants\n- Exploration Of Plants\n- Access to Plant Specialist",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 105, 105, 105))))
                    ])
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 35),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 206, 236, 206),
                      Color.fromARGB(77, 220, 250, 225),
                      Color.fromARGB(255, 206, 236, 206)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: [
                    Row(children: const [
                      Text("Contact Us",
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromARGB(255, 80, 132, 77),
                              fontWeight: FontWeight.bold))
                    ]),
                    const SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Row(children: const [
                              Icon(
                                CupertinoIcons.envelope_fill,
                                color: Color.fromARGB(255, 105, 105, 105),
                              ),
                              SizedBox(width: 10),
                              Text("plantdoc@gmail.com",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(255, 105, 105, 105)))
                            ]),
                            const SizedBox(height: 10),
                            Row(children: const [
                              Icon(CupertinoIcons.phone_fill,
                                  color: Color.fromARGB(255, 105, 105, 105)),
                              SizedBox(width: 10),
                              Text("+237 6723792349",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(255, 105, 105, 105)))
                            ]),
                            const SizedBox(height: 10),
                            Row(children: const [
                              Icon(CupertinoIcons.info_circle_fill,
                                  color: Color.fromARGB(255, 105, 105, 105)),
                              SizedBox(width: 10),
                              Text("www.plantdoctor.com",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color:
                                          Color.fromARGB(255, 105, 105, 105)))
                            ]),
                          ],
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 40),
              bookButton(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DiagnosisPage()));
              })
            ])),
      )),
      backgroundColor: const Color.fromARGB(255, 236, 245, 235),
    );
  }
}
