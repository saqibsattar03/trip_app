import 'package:flutter/material.dart';
import 'package:trip_app/utils/colors.dart' as color;

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({
    Key? key,
    required this.image,
    this.text,
    this.isResponsive = false,
    this.width,
  }) : super(key: key);

  final String image;
  final Text? text;
  final bool? isResponsive;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color.AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(image),
          ),
        ],
      ),
    );
  }
}
