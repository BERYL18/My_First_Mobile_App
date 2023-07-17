import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plant_doctor_app/main.dart';
import 'package:plant_doctor_app/widgets/home.dart';
import 'package:plant_doctor_app/pages/register_page.dart';
import 'package:plant_doctor_app/pages/reset_screen.dart';
import 'package:plant_doctor_app/widgets/auth_card.dart';
import 'package:plant_doctor_app/widgets/header.dart';
import 'package:plant_doctor_app/widgets/input.dart';
import 'package:plant_doctor_app/widgets/signin_btn.dart';
import 'package:plant_doctor_app/widgets/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  redirect() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  Future signIn() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: ((context) =>
            const Center(child: CircularProgressIndicator())));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      redirect();
      Utils.showValidSnackBar("Login successful!");
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
                  child: Column(children: [
            logo("Plant Doctor", "Welcome to the Sign In Page",
                "lib/assets/heart.png"),
            formInputField(
                controller: emailController,
                labelText: "Email",
                hideText: false),
            const SizedBox(height: 25),
            formInputField(
                controller: passwordController,
                labelText: "Password",
                hideText: true),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResetScreen()));
                    },
                    child: Text("Forgot Password",
                        style: TextStyle(color: Colors.grey[600])),
                  )
                ])),
            const SizedBox(height: 20),
            signinButton(onTap: signIn),
            const SizedBox(height: 20),
            authOption(),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: Row(
                    children: const [
                      Text("Don't have an account?"),
                      SizedBox(width: 4),
                      Text("Register Now",
                          style: TextStyle(
                              color: Color.fromARGB(255, 213, 241, 214),
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ))
          ]))),
        ));
  }
}
