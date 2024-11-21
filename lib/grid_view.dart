import 'package:flutter/material.dart';
import 'photo_page.dart';
import 'music_page.dart';
import 'video_page.dart';
import 'document_page.dart';

class TugasGridView extends StatelessWidget {
  final List<GridItem> items = [
    GridItem(
      title: "Foto",
      subtitle: "32 foto",
      icon: Icons.camera_alt,
      color: Colors.blue[400]!,
      page: PhotoPage(),
    ),
    GridItem(
      title: "Musik",
      subtitle: "120 musik",
      icon: Icons.music_note,
      color: Colors.purple[400]!,
      page: MusicPage(),
    ),
    GridItem(
      title: "Video",
      subtitle: "48 video",
      icon: Icons.video_library,
      color: Colors.orange[400]!,
      page: VideoPage(),
    ),
    GridItem(
      title: "Dokumen",
      subtitle: "90 file",
      icon: Icons.description,
      color: Colors.green[400]!,
      page: DocumentPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue[50]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.9,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GridItemCard(item: items[index]);
          },
        ),
      ),
    );
  }
}

class GridItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Widget page;

  GridItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.page,
  });
}

class GridItemCard extends StatelessWidget {
  final GridItem item;

  const GridItemCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => item.page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: item.color.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 12,
              offset: Offset(0, 4),
            ),
          ],
          gradient: LinearGradient(
            colors: [item.color.withOpacity(0.9), item.color.withOpacity(0.7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  item.icon,
                  size: 28,
                  color: item.color,
                ),
              ),
              Spacer(),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                item.subtitle,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
