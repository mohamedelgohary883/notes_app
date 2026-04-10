import 'package:flutter/material.dart';

class CustomNotesView extends StatelessWidget {
  const CustomNotesView({super.key,required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flutter tips',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete, color: Colors.black, size: 32),
                  ),
                ],
              ),
              Text(
                maxLines: 2,
                'Build your career with Tharwat Samy',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Align(
                alignment: AlignmentGeometry.bottomRight,
                child: Text(
                  'may,21,2026',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
