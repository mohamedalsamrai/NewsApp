// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  const TitleApp({super.key,required this.nameOne,required this.nameTwo});
  final String nameOne;
  final String nameTwo;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          nameOne,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(
          nameTwo,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.amber),
        )
      ],
    );
  }
}
