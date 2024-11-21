import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {'title': 'Travel Vlog', 'duration': '12:34'},
    {'title': 'Tutorial Flutter', 'duration': '8:50'},
    {'title': 'Cooking Recipe', 'duration': '15:20'},
    {'title': 'Workout Routine', 'duration': '10:45'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video'),
        backgroundColor: Colors.orange[400],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: videos.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.video_library,
                color: Colors.orange[400],
                size: 32,
              ),
            ),
            title: Text(
              videos[index]['title']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Duration: ${videos[index]['duration']}',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            trailing: Icon(Icons.play_arrow, color: Colors.orange[400]),
            onTap: () {
              // Implementasi klik untuk memutar video
            },
          );
        },
      ),
    );
  }
}
