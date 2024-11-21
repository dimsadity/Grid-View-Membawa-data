import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  final List<Map<String, String>> songs = [
    {'title': 'Song 1', 'artist': 'Artist A'},
    {'title': 'Song 2', 'artist': 'Artist B'},
    {'title': 'Song 3', 'artist': 'Artist C'},
    {'title': 'Song 4', 'artist': 'Artist D'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Musik'),
        backgroundColor: Colors.purple[400],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: songs.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey[300],
          thickness: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.music_note,
                color: Colors.purple[400],
              ),
            ),
            title: Text(
              songs[index]['title']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              songs[index]['artist']!,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            trailing: Icon(Icons.play_arrow, color: Colors.purple[400]),
            onTap: () {
              // Implementasi klik untuk memutar lagu
            },
          );
        },
      ),
    );
  }
}
