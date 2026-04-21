import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewItem extends StatelessWidget {
  const EditNoteViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(title: 'Edit Notes', icon: Icons.check),
          SizedBox(height: 30),
          CustomTextField(text: 'Title'),
          SizedBox(height: 10),
          CustomTextField(text: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
