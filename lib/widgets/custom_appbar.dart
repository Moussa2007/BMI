import 'package:bmi/widgets/custom_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: CustomColor.black,
      title: Text(title, style: TextStyle(
        fontSize: 25,
        color: CustomColor.white,
        fontWeight: FontWeight.bold,
      ),),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}