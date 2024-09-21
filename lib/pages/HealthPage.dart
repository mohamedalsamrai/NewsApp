// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/BuilderWidget/HealthListViewBuilder.dart';
import 'package:news/components/Title.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TitleApp(nameOne: 'Health', nameTwo: 'News',),),
      
      body:  const Padding(padding:  EdgeInsets.symmetric(horizontal: 15),
    child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
       
       Healthlistviewbuilder()
    ]
    )
    ));
  }
}