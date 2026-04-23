import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon,this.onPressed});
  final IconData icon;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withAlpha(15),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
