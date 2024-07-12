import 'package:flutter/material.dart';

class MyGradientContainer extends StatelessWidget {
  const MyGradientContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.beginColor,
      required this.endColor,
      this.imagePath,
      required this.radius,
      this.icon});

  final double width;
  final double height;
  final Color? beginColor;
  final Color? endColor;
  final String? imagePath;
  final double radius;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [beginColor!, endColor!]),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: Colors.white),
        image: imagePath != null
            ? DecorationImage(image: AssetImage(imagePath!), fit: BoxFit.fill)
            : null,
      ),
      child: icon,
    );
  }
}
