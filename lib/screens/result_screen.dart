
import 'package:bmi/widgets/custom_appbar.dart';
import 'package:bmi/widgets/custom_colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,

      appBar: CustomAppBar(title: 'Your result'),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Normal', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: CustomColor.white,
          ),)
        ],
      ),

    );
  }
}