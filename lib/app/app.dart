import 'package:flutter/material.dart';
import 'package:flutter_profile/presentation/core/colors.dart';
import 'package:flutter_profile/presentation/main/main_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        fontFamily: 'PlayfairDisplay',
      ),
      home: const MainView(),
    );
  }
}
