import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
String? title, subtitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            text: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 15),
          CustomTextField(
            text: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 80),
          CustomButton(
              text: 'Add',
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
                setState(() {});
              }),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
