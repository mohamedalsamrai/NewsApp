// ignore_for_file: file_names

import 'package:flutter/material.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.title, required this.subtitle,required this.urlImage});

  final String title;
  final String? subtitle;
  final String ?urlImage;
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 27),
      child: Column(
        children: [
          SizedBox(
              height: 180,
              width: double.infinity,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: urlImage != null
                      ? Image.network(
                          "$urlImage",
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            "assets/images/1.png",
                            fit: BoxFit.cover,
                          ),
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          "assets/images/1.png",
                          fit: BoxFit.cover,
                        ))),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 3,
          ),
          subtitle != null
              ? Text(
                  "$subtitle",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                )
              : const Text("")
        ],
      ),
    );
  }
}
