// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/main.dart';
import 'package:plant_doctor_app/widgets/home.dart';
import 'package:plant_doctor_app/pages/login_page.dart';
import 'package:plant_doctor_app/widgets/auth_card.dart';
import 'package:plant_doctor_app/widgets/input.dart';
import 'package:plant_doctor_app/widgets/signin_btn.dart';
import 'package:plant_doctor_app/widgets/utils.dart';

import '../widgets/header.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    userController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  redirect() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  Future signUp() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: ((context) =>
            const Center(child: CircularProgressIndicator())));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      redirect();
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);
      Navigator.pop(context);
    } finally {
      navigatorKey.currentState!.popUntil((route) => true);
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
                        logo("Plant Doctor", "Welcome to the Sign Up Page",
                            "lib/assets/heart.png"),
                        formInputField(
                            controller: userController,
                            labelText: "Username",
                            hideText: false),
                        const SizedBox(height: 25),
                        emailInputField(
                            controller: emailController,
                            labelText: "Email",
                            hideText: false),
                        const SizedBox(height: 25),
                        passwordInputField(
                            controller: passwordController,
                            labelText: "Password",
                            hideText: true),
                        const SizedBox(height: 10),
                        const SizedBox(height: 20),
                        registerButton(onTap: signUp),
                        const SizedBox(height: 20),
                        authOption(),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 60),
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()));
                                },
                                child: Row(
                                  children: const [
                                    Text("Already have an account?"),
                                    SizedBox(width: 4),
                                    Text("Sign In Now",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 213, 241, 214),
                                            fontWeight: FontWeight.bold))
                                  ],
                                )))
                      ])))),
        ));
  }
}
