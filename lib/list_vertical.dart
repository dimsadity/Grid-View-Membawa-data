import 'package:flutter/material.dart';

class List_view_Vertical extends StatelessWidget {
  const List_view_Vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Pati"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("08567856857"),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text("Upgris"),
          )
        ],
      ),
    );
  }
}
