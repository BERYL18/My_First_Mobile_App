import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/pages/profile_page.dart';
import 'package:plant_doctor_app/widgets/bottom_nav.dart';
import 'package:plant_doctor_app/widgets/header.dart';
import 'package:plant_doctor_app/widgets/input.dart';
import 'package:plant_doctor_app/widgets/label_info.dart';
import 'package:plant_doctor_app/widgets/utils.dart';
import 'package:uuid/uuid.dart';

import '../widgets/signin_btn.dart';

class DiagnosisPage extends StatefulWidget {
  const DiagnosisPage({super.key});

  @override
  State<DiagnosisPage> createState() => _DiagnosisPageState();
}

class _DiagnosisPageState extends State<DiagnosisPage> {
  final hostPlantController = TextEditingController();
  final locationController = TextEditingController();
  final settingController = TextEditingController();
  final symptomController = TextEditingController();
  final imagePathController = TextEditingController();
  var uuid = const Uuid();

  @override
  void dispose() {
    hostPlantController.dispose();
    locationController.dispose();
    settingController.dispose();
    symptomController.dispose();
    imagePathController.dispose();

    super.dispose();
  }

  Future bookDiagnosis() async {
    Utils.showValidSnackBar("Diagnosis has been booked");
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ProfilePage()));
  }

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
      body: SingleChildScrollView(
          child: SingleChildScrollView(
              child: Column(children: [
        const SizedBox(height: 25),
        logo("Diagnosis", "Fill in as much info as possible",
            "lib/assets/heart.png"),
        labelInfo("Host Plant Name",
            "(One or more of the following common names, scientific names or variety names)"),
        const SizedBox(height: 10),
        textInputField(
            controller: hostPlantController,
            hintText: "Tulip",
            hideText: false),
        const SizedBox(height: 15),
        labelInfo("Primary Symptoms",
            "(Enter full detail of the symptoms the plant is experiencing)"),
        const SizedBox(height: 10),
        textInputField(
            controller: symptomController,
            hintText: "Yellow leaves",
            hideText: false),
        const SizedBox(height: 15),
        labelInfo("Plant Setting",
            "(Is the plant indoor/outdoor: provide more detail)"),
        const SizedBox(height: 10),
        textInputField(
            controller: settingController,
            hintText: "outdoor",
            hideText: false),
        const SizedBox(height: 15),
        labelInfo("Geographical Location",
            "(Enter the exact location of the plant or where the plant was before suffering from the disease)"),
        const SizedBox(height: 10),
        textInputField(
            controller: locationController,
            hintText: "Cameroon",
            hideText: false),
        const SizedBox(height: 35),
        bookButton(onTap: bookDiagnosis),
        const SizedBox(height: 20),
      ]))),
    );
  }
}
