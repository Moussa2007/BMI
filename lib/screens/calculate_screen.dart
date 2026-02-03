
import 'package:bmi/widgets/custom_appbar.dart';
import 'package:bmi/widgets/custom_colors.dart';
import 'package:bmi/widgets/gender_info.dart';
import 'package:bmi/widgets/weight_age.dart';
import 'package:flutter/material.dart';

class BMIcalculator extends StatefulWidget {
  const BMIcalculator({super.key});

  @override
  State<BMIcalculator> createState() => _BMIcalculatorState();
}

class _BMIcalculatorState extends State<BMIcalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      appBar: CustomAppBar(title: 'BMI Calculator'),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: <Widget>[
            Expanded(
              child: Row(
                spacing: 10,
                children: <Widget>[
                  //================ first row ====================
                  Expanded(
                    child: GenderInfo(
                      txt: 'Male',
                      color: CustomColor.grey,
                      icon: Icons.male,
                    ),
                  ),
                  Expanded(
                    child: GenderInfo(
                      txt: 'Female',
                      color: CustomColor.grey,
                      icon: Icons.female,
                    ),
                  ),
                ],
              ),
            ),
            //=========== second row ==================
            Expanded(
              child: Container(
                color: CustomColor.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(fontSize: 22, color: CustomColor.white),
                    ),
                    Slider(
                      min: 80,
                      max: 210,
                      value: 80,
                      activeColor: CustomColor.red,
                      inactiveColor: CustomColor.white,
                      onChanged: (value) => value,
                    ),
                  ],
                ),
              ),
            ),
            //============= third row ===================
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: WeightAge(
                      txt: 'Weight',
                      color: CustomColor.grey,
                      icon1: Icons.add,
                      txt1: '70kg',
                      icon2: Icons.remove,
                    ),
                  ),
                  Expanded(
                    child: WeightAge(
                      txt: 'Age',
                      color: CustomColor.grey,
                      icon1: Icons.add,
                      txt1: '21',
                      icon2: Icons.remove,
                    ),
                  ),
                ],
              ),
            ),
            //============== Button =========================
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultScreen()));
                  Navigator.pushNamed(context, 'result');
                },
                child: Text(
                  'Calculate',
                  style: TextStyle(color: CustomColor.white, fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
