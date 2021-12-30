import 'package:flutter/material.dart';
import 'package:flutter_profile/presentation/core/colors.dart';
import 'package:flutter_profile/presentation/core/widgets/user_avatar.dart';

class HouseholdsProfile extends StatelessWidget {
  const HouseholdsProfile({
    Key? key,
    required this.imageName,
    required this.name,
    required this.relation,
  }) : super(key: key);

  final String imageName;
  final String name;
  final String relation;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        UserAvatar(
          imageName: imageName,
          radius: 35,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: AppColors.font,
          ),
        ),
        Text(
          relation,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontFamily: 'Archivo',
          ),
        ),
      ],
    );
  }
}
