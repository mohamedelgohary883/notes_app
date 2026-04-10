import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_notes_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  // final Color color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,),
        child: ListView(
          children: [
            SizedBox(height: 5),
            CustomAppBar(),
            SizedBox(height: 30),
            CustomNotesView(color: Colors.orangeAccent,),
            CustomNotesView(color: Colors.blueAccent,),
            CustomNotesView(color: Colors.amberAccent,),
            CustomNotesView(color: Colors.grey,),
            CustomNotesView(color: Colors.brown,),
          ],
        ),
      ),
    );
  }
}
