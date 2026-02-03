import 'package:bmi/widgets/custom_colors.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.txt,
    required this.color,
    required this.icon1,
    required this.icon2,
    required this.txt1,
  });

  final String txt;
  final String txt1;
  final Color color;
  final IconData icon1;
  final IconData icon2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(txt, style: TextStyle(fontSize: 22, color: CustomColor.white)),
          Text(txt1, style: TextStyle(fontSize: 22, color: CustomColor.white)),
          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                shape: CircleBorder(),
                                onPressed: () {},
                                child: Icon(Icons.add),
                              ),
                              SizedBox(width: 5),
                              FloatingActionButton(
                                shape: CircleBorder(),
                                onPressed: () {},
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
        ],
      ),
    );
  }
}
