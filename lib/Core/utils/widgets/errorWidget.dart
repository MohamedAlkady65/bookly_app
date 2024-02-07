import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Styles.text18Medium,
      ),
    );
  }
}
