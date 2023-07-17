import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Padding formInputField(
    {required controller, required bool hideText, required labelText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextFormField(
      controller: controller,
      obscureText: hideText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 223, 240, 223))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: Colors.green)),
          fillColor: Color.fromARGB(255, 223, 240, 223),
          filled: true,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.green)),
    ),
  );
}

Padding emailInputField(
    {required controller, required bool hideText, required labelText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextFormField(
      controller: controller,
      obscureText: hideText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (email) {
        email != null && !EmailValidator.validate(email)
            ? "Enter a valid email"
            : null;
        return null;
      },
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 223, 240, 223))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: Colors.green)),
          fillColor: const Color.fromARGB(255, 223, 240, 223),
          filled: true,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.green)),
    ),
  );
}

Padding passwordInputField(
    {required controller, required bool hideText, required labelText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextFormField(
      controller: controller,
      obscureText: hideText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        value != null && value.length < 6
            ? "Enter minimum of 6 characters"
            : null;
        return null;
      },
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 223, 240, 223))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: Colors.green)),
          fillColor: const Color.fromARGB(255, 223, 240, 223),
          filled: true,
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.green)),
    ),
  );
}

Padding textInputField(
    {required controller, required bool hideText, required hintText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: TextField(
      controller: controller,
      obscureText: hideText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide:
                  BorderSide(color: Color.fromARGB(255, 230, 239, 230))),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: Colors.green)),
          fillColor: const Color.fromARGB(255, 230, 239, 230),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.green)),
    ),
  );
}
