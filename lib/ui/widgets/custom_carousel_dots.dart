import 'package:flutter/material.dart';

class CustomCarouselDots extends StatelessWidget {
  const CustomCarouselDots({
    Key? key,
    required this.height,
    required this.color,
  }) : super(key: key);

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 2.0,
      ),
      height: height,
      width: 8.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
      ),
    );
  }
}
