import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  final List<Color> color = [
    Colors.brown,
    Colors.blueAccent,
    Colors.lightGreen,
    Colors.deepOrangeAccent,
    Colors.tealAccent,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28 * 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: color.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = color[index];
                setState(() {});
              },
              child: ColorItem(
                color: color[index],
                isActive: currentIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
