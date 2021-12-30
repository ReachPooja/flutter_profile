import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/presentation/core/colors.dart';
import 'package:flutter_profile/presentation/core/widgets/user_avatar.dart';
import 'package:flutter_profile/presentation/profile/widgets/archivo_font_text.dart';
import 'package:flutter_profile/presentation/profile/widgets/diamond_text.dart';
import 'package:flutter_profile/presentation/profile/widgets/households_profile.dart';
import 'package:flutter_profile/presentation/profile/widgets/social_card.dart';
import 'package:flutter_profile/presentation/profile/widgets/titile_with_bar.dart';
import 'package:flutter_profile/presentation/profile/widgets/user_info.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int carouselIndex = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              const Align(
                child: UserAvatar(
                  imageName: 'profile',
                  radius: 50,
                ),
              ),
              IconButton(
                padding: const EdgeInsets.only(right: 14),
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
        const Center(
          child: Text(
            'Abraham Thomas',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: AppColors.font,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ArchivoFontText(
              text: 'Peral Land East',
            ),
            DiamondText(),
            ArchivoFontText(text: '#56566'),
            DiamondText(),
            ArchivoFontText(text: 'Male'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            socialIcons.length,
            (index) => SocialCard(
              icon: socialIcons[index],
            ),
          ),
        ),
        Center(
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade300,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                UserInfo(
                  icon: Icons.location_pin,
                  title: 'Address',
                  info: '601 Lakeland Terrace',
                ),
                VerticalDivider(
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                UserInfo(
                  icon: Icons.call,
                  title: 'Phone Number',
                  info: '91 6456584156',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
              color: Color(0xffECF2F8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleWithBar(
                  title: 'My Households',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    HouseholdsProfile(
                      imageName: 'user1',
                      name: 'Rachel Thomas',
                      relation: 'Wife',
                    ),
                    HouseholdsProfile(
                      imageName: 'user2',
                      name: 'Aby Thomas',
                      relation: 'Sister',
                    ),
                    HouseholdsProfile(
                      imageName: 'user3',
                      name: 'Aby Thomas',
                      relation: 'Brother',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleWithBar(
                title: 'Birthdays',
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                'Wedding Anniversary',
                style: TextStyle(
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
        ),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (context, index, realIndex) => Stack(
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          right: 10,
                          top: 5,
                        ),
                        child: UserAvatar(
                          imageName: 'user2',
                          radius: 30,
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey.shade100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            color: AppColors.secondary,
                            child: const Icon(
                              PhosphorIcons.confetti,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Aby Thomas',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.font,
                        ),
                      ),
                      ArchivoFontText(
                        text: 'Feb 25 2021,Monday',
                      ),
                    ],
                  ),
                ],
              ),
              if (index != carouselIndex)
                Container(
                  color: Colors.white.withAlpha(200),
                )
            ],
          ),
          options: CarouselOptions(
            height: MediaQuery.of(context).size.width / 3.5,
            viewportFraction: 0.5,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 1,
            scrollPhysics: const BouncingScrollPhysics(),
            onPageChanged: (i, reason) {
              setState(() {
                carouselIndex = i;
              });
            },
          ),
        ),
      ],
    );
  }
}

final socialIcons = [
  PhosphorIcons.twitterLogoFill,
  PhosphorIcons.linkedinLogo,
  PhosphorIcons.facebookLogo,
  PhosphorIcons.whatsappLogo,
  PhosphorIcons.googleLogoBold,
];
