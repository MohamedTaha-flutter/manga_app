import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Image
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.network(
                  'https://example.com/banner_image.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'One Piece',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text(
                            '7.9',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.visibility, color: Colors.white),
                          Text(
                            '89,200',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        'Syspnosis',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ],
                  ),
                ),
                // Down Arrow Icon
                Positioned(
                  bottom: -20,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            // Chapters Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Chapters',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10, // Example count
              itemBuilder: (context, index) {
                return ChapterCard(
                  chapterNumber: 1067 - index,
                  chapterTitle: index % 2 == 0 ? 'Punk Records' : 'The Will of Ohara',
                  thumbnailUrl: 'https://example.com/chapter_thumbnail.jpg',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final int chapterNumber;
  final String chapterTitle;
  final String thumbnailUrl;

  const ChapterCard({
    required this.chapterNumber,
    required this.chapterTitle,
    required this.thumbnailUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.network(thumbnailUrl, width: 50, height: 50),
        title: Text(
          'Chapter $chapterNumber',
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          chapterTitle,
          style: TextStyle(color: Colors.redAccent),
        ),
        onTap: () {
          // Handle chapter tap
        },
      ),
    );
  }
}
