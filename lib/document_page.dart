import 'package:flutter/material.dart';

class DocumentPage extends StatelessWidget {
  final List<Map<String, String>> documents = [
    {'title': 'Resume', 'type': 'PDF'},
    {'title': 'Meeting Notes', 'type': 'DOCX'},
    {'title': 'Project Plan', 'type': 'PPTX'},
    {'title': 'Budget Report', 'type': 'XLSX'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dokumen'),
        backgroundColor: Colors.green[400],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: documents.length,
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
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.description,
                color: Colors.green[400],
              ),
            ),
            title: Text(
              documents[index]['title']!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Type: ${documents[index]['type']}',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            trailing: Icon(Icons.open_in_new, color: Colors.green[400]),
            onTap: () {
            },
          );
        },
      ),
    );
  }
}
