import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../Utils/Strings/Color.dart';
import 'Navbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  @override
  
  
  double left1 = -100;
  double left2 = -150;
  double left3 = -200;
  double opacity = 0;

  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    });

    Timer(Duration(milliseconds: 2), () {
      left1 = 1500;
      left2 = 1500;
      left3 = 1500;
      opacity = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [

              Image.asset('assets/images/SplashScreen.png',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),

              Center(
                  child: AnimatedOpacity(
                      opacity: opacity,
                      duration: Duration(seconds: 3),
                      curve: Curves.easeIn,
                      child: SvgPicture.asset('assets/images/Logo.svg')
                  )
              ),

              AnimatedPositioned(
                left: left1,
                top: MediaQuery.of(context).size.height / 2.2,
                  duration: Duration(seconds: 2),
                  child: Container(
                    height: 10,
                    width: 90,
                    decoration: BoxDecoration(
                      color: ColorSet.primaryColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
              )),
              AnimatedPositioned(
                  left: left2,
                  duration: Duration(seconds: 2),

                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                    height: 10,
                    width: 90,
                    decoration: BoxDecoration(
                        color: ColorSet.primaryColor,

                        borderRadius: BorderRadius.circular(50)
                    ),
              )),
              AnimatedPositioned(
                  duration: Duration(seconds: 2),

                  left: left3,

                  top: MediaQuery.of(context).size.height / 1.8,
                  child: Container(
                    height: 10,
                    width: 90,
                    decoration: BoxDecoration(
                        color: ColorSet.primaryColor,

                        borderRadius: BorderRadius.circular(50)
                    ),
              )),
            ],
          ),
    );
  }
}
