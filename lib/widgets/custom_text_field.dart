import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.text,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});
  final String text;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      maxLines: maxLines,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(color: color.withAlpha(150)),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: color)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red))),
    );
  }
}
