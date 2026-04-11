import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(text: 'Title'),
              SizedBox(height: 15),
              CustomTextField(text: 'Content', maxLines: 5),
              SizedBox(height: 80),
              CustomButton(text: 'Add', onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
