// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/Services/News_Service.dart';
import 'package:news/components/News_listView.dart';
import 'package:news/models/SportNews_model.dart';

class Sportlistviewbuilder extends StatefulWidget {
  const Sportlistviewbuilder({super.key});

  @override
  State<Sportlistviewbuilder> createState() => _SportlistviewbuilderState();
}

class _SportlistviewbuilderState extends State<Sportlistviewbuilder> {
   // ignore: prefer_typing_uninitialized_variables
   var dataNews;
  @override
  void initState() {
   
    super.initState();
    dataNews = NewsService().getSportNews();
  }

  // List<SportnewsModel> newsIN = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SportnewsModel>>(
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
