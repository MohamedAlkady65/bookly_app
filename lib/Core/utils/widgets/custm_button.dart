
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.left = true,
      required this.text,
      required this.textStyle,
      required this.backgroundColor});
  final bool left;
  final String text;
  final TextStyle textStyle;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            fixedSize: const Size.fromHeight(48),
            shape: RoundedRectangleBorder(
              borderRadius: left
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    )
                  : const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: textStyle,
        ));
  }
}
