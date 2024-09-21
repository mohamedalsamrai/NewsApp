// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/BuilderWidget/SportListViewBuilder.dart';
import 'package:news/components/Title.dart';

class Sportpage extends StatelessWidget {
  const Sportpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TitleApp(nameOne: 'Sport', nameTwo: 'News',),),
      
      body:  const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
       
       Sportlistviewbuilder()
    ]
    )
    ));
  }
}