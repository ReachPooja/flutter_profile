import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              'Trinity Mar Thoma Church, Houston',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
