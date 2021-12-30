import 'package:flutter/material.dart';

class IconImage extends StatelessWidget {
  const IconImage({
    Key? key,
    required this.imageName,
    this.color,
  }) : super(key: key);

  final String imageName;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imageName.png',
      color: color,
    );
  }
}
