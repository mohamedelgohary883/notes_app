import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_list_view_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  // final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),

      body: NotesListViewItem(),
    );
  }
}
