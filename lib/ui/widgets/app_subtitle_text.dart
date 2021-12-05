import 'package:flutter/material.dart';

class AppSubTitleText extends StatelessWidget {
  final size;
  final Color color;
  final String text;
  const AppSubTitleText({
    Key? key,
    required this.text,
    this.color = Colors.black54,
    this.size = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
