import 'package:bmi/widgets/custom_colors.dart';
import 'package:flutter/material.dart';

class GenderInfo extends StatefulWidget {
  const GenderInfo({
    super.key,
    required this.txt,
    required this.icon,
    required this.color,
  });

  final String txt;
  final IconData icon;
  final Color color;

  @override
  State<GenderInfo> createState() => _GenderInfoState();
}

class _GenderInfoState extends State<GenderInfo> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.icon, color: CustomColor.white, size: 70),
          Text(
            widget.txt,
            style: TextStyle(fontSize: 22, color: CustomColor.white),
          ),
        ],
      ),
    );
  }
}
