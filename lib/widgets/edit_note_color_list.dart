import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';
import 'package:notes_app/widgets/constant.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColor.indexWhere(
      (color) => color.toARGB32() == widget.noteModel.color,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColor.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.noteModel.color = kColor[index].toARGB32();
                setState(() {});
              },
              child: ColorItem(
                color: kColor[index],
                isActive: currentIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
