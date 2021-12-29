import 'package:flutter/material.dart';
import 'package:flutter_profile/presentation/profile/profile_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xffEC1C24),
      ),
      home: const ProfileView(),
    );
  }
}
