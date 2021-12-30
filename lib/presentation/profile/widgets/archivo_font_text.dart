import 'package:flutter/material.dart';

class ArchivoFontText extends StatelessWidget {
  const ArchivoFontText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
        fontFamily: 'Archivo',
      ),
    );
  }
}
