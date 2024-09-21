// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/components/Sections_Card.dart';
import 'package:news/models/Sections_model.dart';

class SectionsListView extends StatelessWidget {
  const SectionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
        height: 130,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: sectionsModel.length,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: SectionCard(
                    inx: index,
                  ),
                )));
  }
}
