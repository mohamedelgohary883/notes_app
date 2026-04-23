import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteCardItem extends StatelessWidget {
  const NoteCardItem({super.key, required this.noteModel});
  final NoteModel noteModel;
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
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  noteModel.title,
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllhNotes();
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 30),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    noteModel.subTitle,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.8),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    noteModel.date,
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
