// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/BuilderWidget/NewsListViewBuilder.dart';

import 'package:news/components/SectionlistView.dart';
import 'package:news/models/GnaralNews_modle.dart';

final List<GnaralnewsModle> newsIN = [];

class Hompage extends StatelessWidget {
  const Hompage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
        SliverToBoxAdapter(
          child: SectionsListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 30,
          ),
        ),
        NewsListViewBuilder()
      ]),
    );
  }
}


