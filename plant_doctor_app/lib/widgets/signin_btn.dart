import 'package:flutter/material.dart';

GestureDetector signinButton({required onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ));
}

GestureDetector registerButton({required onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            "Register",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ));
}

GestureDetector bookButton({required onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            "Book Diagnosis",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ));
}

GestureDetector updateButton({required onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            "Update Profile",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ));
}
