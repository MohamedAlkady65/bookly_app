
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: kBorderColor)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          hintText: "Search ...",
          hintStyle: const TextStyle(color: kBorderColor),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.white,
            iconSize: 28,
          )),
      cursorColor: Colors.white,
    );
  }
}
