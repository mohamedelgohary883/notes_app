import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteCardItem extends StatelessWidget {
  const NoteCardItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView();
              },
            ),
          );
        },
        child: Container(
          padding: EdgeInsets.only(bottom: 25, top: 22, left: 15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.black, size: 30),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Build your career with Tharwat Samy',
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 1),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    'may,21,2026',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
