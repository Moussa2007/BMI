import 'package:bmi/widgets/custom_appbar.dart';
import 'package:bmi/widgets/custom_colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmi, required this.analysis});

  final double bmi;
  final String analysis;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,

      appBar: CustomAppBar(title: 'Your result'),

      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    analysis,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.green,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '$bmi',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.white,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.red,
                      foregroundColor: CustomColor.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Recalculate',
                      style: TextStyle(color: CustomColor.white, fontSize: 22),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
