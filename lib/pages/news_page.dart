import 'package:flutter/material.dart';
import 'package:gymshark_store/components/news_tile.dart';
import 'package:gymshark_store/classes/news.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  // List of news tiles
  final List<News> _newsList = const [
    News(
      title: 'HOT DROPS VAN DE MAAND',
      description:
          'Een nieuwe PB voelt goed. Een nieuwe PB in een nieuwe fit voelt beter.',
      imagePath: 'assets/images/news1.png',
    ),
    News(
      title: 'BESPAAR BINNENKORT TOT 50% OP ALLES',
      description: 'De Gymshark Sale. Vanaf 26 juni, 17:00.',
      imagePath: 'assets/images/news2.png',
    ),
    News(
      title: 'T-SHIRTS VOOR AL JE TRAININGEN',
      description:
          'Van sit-ups, sprongen of sprints tot een relaxte rustdag...grote kans dat je je T-shirt hier vindt.',
      imagePath: 'assets/images/news3.png',
    ),
  ];

  // Content of the news page
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Wat zoek je vandaag?',
                hintStyle: TextStyle(color: Colors.grey[800], fontSize: 15),
                prefixIcon: Icon(Icons.search, color: Colors.black, size: 35),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // News list
          Expanded(
            child: ListView.builder(
              itemCount: _newsList.length,
              itemBuilder: (context, index) {
                return NewsTile(news: _newsList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
