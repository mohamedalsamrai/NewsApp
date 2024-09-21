
import 'package:flutter/material.dart';
import 'package:news/components/Title.dart';

import 'package:news/pages/HomePage.dart';

void main() {
  runApp(const News());
}

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: const TitleApp(nameOne: 'News', nameTwo: 'Cloud',),
              centerTitle: true,
            ),
            body: const Hompage()));
  }
}

