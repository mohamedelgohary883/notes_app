import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_card_item.dart';

class NotesListViewItem extends StatelessWidget {
  const NotesListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return NoteCardItem();
      },
    );
  }
}
