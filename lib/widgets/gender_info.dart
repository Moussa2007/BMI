import 'package:bmi/widgets/custom_colors.dart';
import 'package:flutter/material.dart';

class GenderInfo extends StatelessWidget {
  const GenderInfo({
    super.key,
    required this.txt,
    required this.color,
    required this.icon,
  });

  final String txt;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: CustomColor.white, size: 70),
          Text(txt, style: TextStyle(fontSize: 22, color: CustomColor.white)),
        ],
      ),
    );
  }
}
