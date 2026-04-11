import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text, this.maxLines = 1});
  final String text;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: color.withAlpha(150)),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
      ),
    );
  }
}
