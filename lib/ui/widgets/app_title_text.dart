import 'package:flutter/material.dart';

class AppTitleText extends StatelessWidget {
  final size;
  final Color color;
  final String text;
  const AppTitleText(
      {Key? key,
      required this.text,
      this.color = Colors.black,
      this.size = 30.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
