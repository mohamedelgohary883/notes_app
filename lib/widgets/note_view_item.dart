import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_list_view_item.dart';

class NoteViewItem extends StatefulWidget {
  const NoteViewItem({super.key});

  @override
  State<NoteViewItem> createState() => _NoteViewItemState();
}


class _NoteViewItemState extends State<NoteViewItem> {
@override
  void initState() {
   BlocProvider.of<NotesCubit>(context).fetchAllhNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAppBar(title: 'Notes', icon: Icons.search),
          SizedBox(height: 20),
          Expanded(child: NotesListViewItem()),
        ],
      ),
    );
  }
}
