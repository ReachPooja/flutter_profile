import 'package:flutter/material.dart';
import 'package:flutter_profile/presentation/core/colors.dart';
import 'package:flutter_profile/presentation/core/widgets/icon_image.dart';
import 'package:flutter_profile/presentation/main/widgets/app_info.dart';
import 'package:flutter_profile/presentation/core/widgets/user_avatar.dart';
import 'package:flutter_profile/presentation/profile/profile_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> with TickerProviderStateMixin {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconImage(
                            imageName: 'menu',
                          ),
                        ),
                      ),
                      const AppInfo(),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(right: 24),
                                child: UserAvatar(
                                  imageName: 'user4',
                                  radius: 16,
                                ),
                              ),
                              UserAvatar(
                                imageName: 'user5',
                                radius: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  child: const TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ProfileView(),
                      Center(
                        child: Text('Family'),
                      ),
                      Center(
                        child: Text('Activity'),
                      ),
                      Center(
                        child: Text('Contribution'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: TabBar(
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          unselectedLabelColor: Colors.grey,
          labelColor: AppColors.primary,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: AppColors.primary,
          indicatorWeight: 5,
          labelStyle: const TextStyle(
            fontSize: 12,
            fontFamily: 'Archivo',
          ),
          tabs: [
            Tab(
              text: 'Home',
              icon: IconImage(
                imageName: 'home',
                color: currentIndex == 0 ? AppColors.primary : null,
              ),
            ),
            Tab(
              text: 'Family',
              icon: IconImage(
                imageName: 'family',
                color: currentIndex == 1 ? AppColors.primary : null,
              ),
            ),
            Tab(
              text: 'Activity',
              icon: IconImage(
                imageName: 'activity',
                color: currentIndex == 2 ? AppColors.primary : null,
              ),
            ),
            Tab(
              text: 'Contribution',
              icon: IconImage(
                imageName: 'contribution',
                color: currentIndex == 3 ? AppColors.primary : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
