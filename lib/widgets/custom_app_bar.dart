import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Notes', style: TextStyle(fontSize: 28)),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            backgroundBlendMode: BlendMode.color,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.white, size: 28),
            ),
          ),
        ),
      ],
    );
  }
}
