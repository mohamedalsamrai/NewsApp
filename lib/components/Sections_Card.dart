// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news/models/Sections_model.dart';
import 'package:news/pages/EnteraimentPage.dart';
import 'package:news/pages/HealthPage.dart';
import 'package:news/pages/SportPage.dart';

// ignore: must_be_immutable
class SectionCard extends StatelessWidget {
  SectionCard({super.key, required this.inx});
  int inx;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          switch (inx) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HealthPage()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Sportpage()));
              break;
            case 2:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Enteraimentpage()));
              break;
          }
        },
        child: Card(
          child: Container(
            height: 130,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    image: NetworkImage(sectionsModel[inx].image),
                    fit: BoxFit.cover)),
            child: Center(
              child: Text(
                sectionsModel[inx].name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
