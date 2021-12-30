import 'package:flutter/material.dart';
import 'package:flutter_profile/presentation/core/colors.dart';

class TitleWithBar extends StatelessWidget {
  const TitleWithBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.font,
          ),
        ),
        const SizedBox(
          width: 12,
          child: Divider(
            thickness: 3,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
