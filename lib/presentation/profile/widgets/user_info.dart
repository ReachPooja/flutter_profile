import 'package:flutter/material.dart';
import 'package:flutter_profile/presentation/core/colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key? key,
    required this.icon,
    required this.title,
    required this.info,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: AppColors.secondary,
            ),
            child: Icon(
              icon,
              size: 16,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          RichText(
            text: TextSpan(
              text: title,
              style: const TextStyle(
                color: Colors.black,
                fontFamily: 'PlayfairDisplay',
              ),
              children: [
                TextSpan(
                  text: '\n$info',
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'Archivo',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
