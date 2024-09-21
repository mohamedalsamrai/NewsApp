// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/Services/News_Service.dart';
import 'package:news/components/News_listView.dart';
import 'package:news/models/GnaralNews_modle.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
   // ignore: prefer_typing_uninitialized_variables
   var dataNews;
  @override
  void initState() {
    
    super.initState();
    dataNews = NewsService().getNews();
  }

  // List<GnaralnewsModle> newsIN = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GnaralnewsModle>>(
        future: dataNews,
        builder: (context, snapshot) => snapshot.hasData
            ? NewsListView(
                newsIN: snapshot.data!,
              )
            : snapshot.hasError
                ? const SliverToBoxAdapter(
                    child:  Center(
                        child: Text(
                    "Error",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  )))
                : const SliverToBoxAdapter(
                    child: Center(child: CircularProgressIndicator()),
                  ));
    // return isLod
    //     ? SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()),
    //       )
    //     : newsIN.isNotEmpty
    //         ? NewsListView(
    //             newsIN: newsIN,
    //           )
    //         : SliverToBoxAdapter(
    //             child: Center(
    //                 child: Text(
    //               "Error",
    //               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    //             )),
    //           );
  }
}
