import 'dart:math';

import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:fat_to_fit/screen/Calculator/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'Widgets/Gender_Widget.dart';
import 'Widgets/age_weight_widget.dart';
import 'Widgets/height_widget.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int _gender = 0;
  int _height = 150;
  int _age = 30;
  int _weight = 50;
  bool _isFinished = false;
  double _bmiScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('BMI Calculator'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/SplashScreen.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenderWidget(
                onchange: (genderVal) {
                  _gender = genderVal;
                },
              ),
              HeightWidget(
                onchanged: (heightVal) {
                  _height = heightVal;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AgeWeightWidget(
                    onchange: (ageVal) {
                      _age = ageVal;
                    },
                    title: 'Age',
                    initValue: 18,
                    min: 0,
                    max: 100,
                  ),
                  AgeWeightWidget(
                    onchange: (weightVal) {
                      _age = weightVal;
                    },
                    title: 'Weight(KG)',
                    initValue: 50,
                    min: 0,
                    max: 200,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SwipeableButtonView(
                    isFinished: _isFinished,
                    onFinish: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScoreScreen(
                            bmiScore: _bmiScore,
                            age: _age,
                          )));
                      setState(() {
                        _isFinished = false;
                      });
                    },
                    onWaitingProcess: () {
                      calculateBMI();

                      Future.delayed(Duration(seconds: 1), () {
                        setState(() {
                          _isFinished = true;
                        });
                      });
                    },
                    activeColor: ColorSet.primaryColor.withOpacity(.7),
                    buttonWidget: Icon(
                      Icons.arrow_forward_ios,
                      color: ColorSet.primaryColor,
                    ),
                    buttonText: 'Calculate'),
              )
            ],
          )
        ],
      ),
    );
  }

  void calculateBMI() {
    _bmiScore = _weight / pow(_height / 100, 2);
  }
}
