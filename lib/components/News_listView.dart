// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/components/NewsCard.dart';




// ignore: must_be_immutable
class NewsListView extends StatelessWidget {
  List<dynamic> newsIN = [];
     

  NewsListView({super.key,required this.newsIN});
  
  @override
 

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
           childCount: newsIN.length,
            (context, index) => NewsCard(title: newsIN[index].title, subtitle: newsIN[index].subtitle, urlImage: newsIN[index].urlImage)));
  }
}

