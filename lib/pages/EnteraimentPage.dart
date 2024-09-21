// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/BuilderWidget/EntertaimentListViewBuild.dart';
import 'package:news/components/Title.dart';

class Enteraimentpage extends StatelessWidget {
  const Enteraimentpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const TitleApp(nameOne: 'Enteraiment', nameTwo: 'News',),),
      
      body:  const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
    child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
       
       Entertaimentlistviewbuild()
    ]
    )
    ));
  }
}