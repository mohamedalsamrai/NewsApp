// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/Services/News_Service.dart';
import 'package:news/components/News_listView.dart';
import 'package:news/models/HealthNews_model.dart';

class Healthlistviewbuilder extends StatefulWidget {
  const Healthlistviewbuilder({super.key});

  @override
  State<Healthlistviewbuilder> createState() => _HealthlistviewbuilderState();
}

class _HealthlistviewbuilderState extends State<Healthlistviewbuilder> {
   // ignore: prefer_typing_uninitialized_variables
   var dataNews;
  @override
  void initState() {
    
    super.initState();
    dataNews = NewsService().getHealthNews();
  }

  // List<HealthnewsModel> newsIN = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HealthnewsModel>>(
        future: dataNews,
        builder: (context, snapshot) => snapshot.hasData
            ? NewsListView(
                newsIN: snapshot.data!,
              )
            : snapshot.hasError
                ? const SliverToBoxAdapter(
                    child: Center(
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
