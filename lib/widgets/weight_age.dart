import 'package:bmi/widgets/custom_colors.dart';
import 'package:flutter/material.dart';

// This widget to create the small buttons to increase & decrease weight & Age

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,

    required this.icon,
    required this.onpressed,
    required this.txt,
    required this.txt1,
    required this.onpressed1,
    required this.icon1,
  });

  final IconData icon;
  final IconData icon1;
  final Function() onpressed;
  final Function() onpressed1;
  final String txt;
  final String txt1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(txt, style: TextStyle(fontSize: 22, color: CustomColor.white)),
          SizedBox(height: 5),
          Text(txt1, style: TextStyle(fontSize: 22, color: CustomColor.white)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: CustomColor.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: MaterialButton(onPressed: onpressed, child: Icon(icon)),
              ),
              SizedBox(width: 5),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: CustomColor.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: MaterialButton(
                  onPressed: onpressed1,
                  child: Icon(icon1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
