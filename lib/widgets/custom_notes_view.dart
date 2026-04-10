import 'package:flutter/material.dart';

class CustomNotesView extends StatelessWidget {
  const CustomNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Flutter Tips'),
              IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
            ],
          ),
          Text('Build your career with Tharwat Samy'),
        ],
      ),
    );
  }
}
