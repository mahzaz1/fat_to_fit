import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

class ScoreScreen extends StatelessWidget {
  ScoreScreen({
    Key? key,
    required this.bmiScore,
    required this.age,
    this.bmiInterpretation,
    this.bmiStatus,
    this.bmiStatusColor,
  }) : super(key: key);

  final double bmiScore;
  final int age;
  String? bmiStatus;
  Color? bmiStatusColor;
  String? bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation();
    return Scaffold(
      appBar: AppBar(
        title: Text('Your BMI Result'),
        automaticallyImplyLeading: false,
      ),
      body: Stack(

        children: [
          Image.asset(
            'assets/images/SplashScreen.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                Text(
                  'Your Score',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                PrettyGauge(
                  gaugeSize: 300,
                  minValue: 0,
                  maxValue: 40,
                  startMarkerStyle: TextStyle(color: Colors.white),
                  endMarkerStyle: TextStyle(color: Colors.white),
                  segments: [
                    GaugeSegment('UnderWeight', 18.5, Colors.pink),
                    GaugeSegment('Normal', 6.4, Colors.green),
                    GaugeSegment('OverWeight', 5, Colors.orange),
                    GaugeSegment('Obese', 10.1, Colors.red),
                  ],
                  valueWidget: Text(
                    bmiScore.toStringAsFixed(1),

                    style: TextStyle(fontSize: 40),
                  ),
                  currentValue: bmiScore.toDouble(),
                  needleColor: ColorSet.primaryColor,
                ),
                Text(
                  bmiStatus!,
                  style: TextStyle(fontSize: 30, color: bmiStatusColor),
                ),
                Text(
                  bmiInterpretation!,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .05,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(ColorSet.primaryColor)
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Re-calculate'))
              ],
            ),
          )
        ],
      ),
    );
  }

  void setBmiInterpretation() {
    if (bmiScore > 30) {
      bmiStatus = 'Obese';
      bmiInterpretation = 'Please work on reduce obesity';
      bmiStatusColor = Colors.red;
    } else if (bmiScore >= 25) {
      bmiStatus = 'Overweight';
      bmiInterpretation = 'Do regular exercise & reduce weight';
      bmiStatusColor = Colors.orange;
    } else if (bmiScore >= 18.5) {
      bmiStatus = 'Normal';
      bmiInterpretation = 'Enjoy, You are fit';
      bmiStatusColor = Colors.green;
    } else if (bmiScore < 18.5) {
      bmiStatus = 'Underweight';
      bmiInterpretation = 'Try to increase weight';
      bmiStatusColor = Colors.pink;
    }
  }
}
