import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  // final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add, size: 32, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return CustomNoteItem(color: Colors.blueAccent);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
