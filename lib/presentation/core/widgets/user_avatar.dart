import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    Key? key,
    required this.radius,
    required this.imageName,
  }) : super(key: key);

  final double radius;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.transparent,
      child: Image.asset(
        'assets/images/$imageName.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
