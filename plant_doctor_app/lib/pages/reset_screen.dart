import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/main.dart';
import 'package:plant_doctor_app/widgets/header.dart';
import 'package:plant_doctor_app/widgets/input.dart';
import 'package:plant_doctor_app/widgets/utils.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  Future resetPassword() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: ((context) =>
            const Center(child: CircularProgressIndicator())));

    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      Utils.showValidSnackBar("Reset Link sent!");
    } on FirebaseAuthException catch (e) {
      Utils.showSnackBar(e.message);

      // Hiding the dialog
      navigatorKey.currentState!.popUntil((route) => true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: const Icon(CupertinoIcons.left_chevron),
                onPressed: () {
                  Navigator.pop(context);
                })),
        backgroundColor: Colors.green[100],
        body: Form(
            key: formKey,
            child: Container(
              height: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 50),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white30, Colors.green],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: SafeArea(
                  child: SingleChildScrollView(
                      child: Column(children: [
                logo("Reset Password", "", "lib/assets/heart.png"),
                const Text("Enter your email to reset your password",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                emailInputField(
                    controller: emailController,
                    labelText: "Email",
                    hideText: false),
                const SizedBox(height: 25),
                SizedBox(
                    width: 220,
                    child: ElevatedButton(
                        onPressed: resetPassword,
                        child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: const [
                                Icon(CupertinoIcons.envelope,
                                    color: Colors.white),
                                SizedBox(width: 10),
                                Text("Reset Password",
                                    style: TextStyle(fontSize: 20)),
                              ],
                            ))))
              ]))),
            )));
  }
}
