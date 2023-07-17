// ignore_for_file: unrelated_type_equality_checks

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/main.dart';
import 'package:plant_doctor_app/pages/profile_page.dart';
import 'package:plant_doctor_app/widgets/input.dart';
import 'package:plant_doctor_app/widgets/label_info.dart';
import 'package:plant_doctor_app/widgets/signin_btn.dart';
import 'package:plant_doctor_app/widgets/utils.dart';

import '../widgets/header.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final emailController = TextEditingController();
  final occupationController = TextEditingController();
  final contactController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    emailController.dispose();
    occupationController.dispose();
    contactController.dispose();

    super.dispose();
  }

  Future signUp() async {
    try {
      Utils.showValidSnackBar("Updated successfully!");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfilePage()));
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        body: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 50),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white30, Colors.green],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: SafeArea(
              child: SingleChildScrollView(
                  child: Form(
                      key: formKey,
                      child: Column(children: [
                        logo(
                            "Plant Doctor",
                            "Fill in to update profile information",
                            "lib/assets/heart.png"),
                        const SizedBox(height: 10),
                        textInputField(
                            controller: userController,
                            hintText: "Enter Username",
                            hideText: false),
                        const SizedBox(height: 10),
                        textInputField(
                            controller: emailController,
                            hintText: "Enter a valid email address",
                            hideText: false),
                        const SizedBox(height: 10),
                        textInputField(
                            controller: occupationController,
                            hintText: "Enter your Occupation",
                            hideText: false),
                        const SizedBox(height: 10),
                        textInputField(
                            controller: contactController,
                            hintText: "+237 XXX XXX XXX",
                            hideText: false),
                        const SizedBox(height: 35),
                        updateButton(onTap: signUp),
                        const SizedBox(height: 20),
                      ])))),
        ));
  }
}
