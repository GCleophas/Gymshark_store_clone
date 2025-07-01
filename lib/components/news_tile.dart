import 'package:flutter/material.dart';
import 'package:gymshark_store/classes/news.dart';

class NewsTile extends StatelessWidget {
  final News news;
  const NewsTile({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      width: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          // News title image
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              // Image of the news item
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(news.imagePath),
              ),
              Column(
                children: [
                  // News title
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                      top: 12.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Text(
                      news.title,
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'BebasNeue',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // News description
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                      bottom: 12.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Text(
                      news.description,
                      style: const TextStyle(
                        fontSize: 15,
                        fontFamily: 'BebasNeue Thin',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
