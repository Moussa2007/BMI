import 'package:bmi/screens/result_screen.dart';
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
  bool isMale = true;
  double currentSliderValue = 80.0;
  double bmi = 0;
  int height = 0;
  int weight = 50;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.black,
      appBar: CustomAppBar(title: 'BMI Calculator'),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          spacing: 10,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  //================ first row ====================
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: GenderInfo(
                        txt: "Male",
                        icon: Icons.male,
                        color: isMale ? CustomColor.red : CustomColor.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: GenderInfo(
                        txt: "Female",
                        icon: Icons.female,
                        color: isMale ? CustomColor.grey : CustomColor.red,
                      ),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          currentSliderValue.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 22,
                            color: CustomColor.white,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 16,
                            color: CustomColor.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      min: 80,
                      max: 250,
                      value: currentSliderValue,
                      activeColor: CustomColor.red,
                      inactiveColor: CustomColor.white,
                      onChanged: (double newValue) {
                        setState(() {
                          currentSliderValue = newValue;
                        });
                      },
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
                      txt: "Weight",
                      txt1: weight.toString(),
                      icon: Icons.add,
                      icon1: Icons.remove,
                      onpressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onpressed1: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: WeightAge(
                      txt: "Age",
                      txt1: age.toString(),
                      icon: Icons.add,
                      icon1: Icons.remove,
                      onpressed: () {
                        setState(() {
                          age++;
                        });
                      },
                      onpressed1: () {
                        setState(() {
                          age--;
                        });
                      },
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
                borderRadius: BorderRadius.all(Radius.circular(40)),
                color: CustomColor.red,
              ),
              child: MaterialButton(
                onPressed: () {
                  bmi =
                      weight /
                      (currentSliderValue * currentSliderValue / 10000);
                  String analysis = "";
                  switch (bmi) {
                    case < 18.5:
                      analysis = "Underwight";
                      break;
                    case >= 18.5 && < 24.9:
                      analysis = "Normalweight";
                      break;
                    case >= 24.9 && < 29.9:
                      analysis = "Overweight";
                      break;
                    case >= 29.9 && < 34.9:
                      analysis = "Obese";
                      break;
                    case >= 34.9:
                      analysis = "Extremely Obese";
                      break;
                  }

                  var sentBMI = double.parse(bmi.toStringAsFixed(2));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ResultScreen(bmi: sentBMI, analysis: analysis),
                    ),
                  );
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
