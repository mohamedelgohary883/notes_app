import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewItem extends StatefulWidget {
  const EditNoteViewItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteViewItem> createState() => _EditNoteViewItemState();
}

String? title, subtitle;

class _EditNoteViewItemState extends State<EditNoteViewItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = subtitle ?? widget.noteModel.subTitle;
              BlocProvider.of<NotesCubit>(context).fetchAllhNotes();
              widget.noteModel.save();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 30),
          CustomTextField(
            text: widget.noteModel.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(height: 10),
          CustomTextField(
            text: widget.noteModel.subTitle,
            maxLines: 5,
            onChanged: (value) {
              subtitle = value;
            },
          ),
        ],
      ),
    );
  }
}
