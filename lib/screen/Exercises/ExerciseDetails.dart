import 'package:fat_to_fit/Utils/Strings/Chest.dart';
import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:flutter/material.dart';

class ExerciseDetail extends StatelessWidget {
  ExerciseDetail({
    Key? key,
    required this.gameName,
    required this.gameGif,
    required this.muscleUsed,
    required this.equipments,
    required this.level,
    required this.dec,
  }) : super(key: key);

  String gameName;
  String gameGif;
  String muscleUsed;
  String equipments;
  String level;
  String dec;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(gameName)),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/SplashScreen.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                        width: double.infinity, image: AssetImage(gameGif)),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Text(
                    gameName,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Level : ',
                          style: TextStyle(color: Colors.white),
                          children: [
                        TextSpan(
                          text: level,
                          style: TextStyle(
                              color: ColorSet.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ])),
                  SizedBox(
                    height: height * .02,
                  ),
                  Divider(
                    thickness: 1,
                    color: ColorSet.primaryColor.withOpacity(.6),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Muscles Used : ',
                          style: TextStyle(color: Colors.white),
                          children: [
                        TextSpan(
                          text: muscleUsed,
                          style: TextStyle(
                              color: ColorSet.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ])),
                  SizedBox(
                    height: height * .02,
                  ),
                  RichText(
                      text: TextSpan(
                          text: 'Equipment : ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          children: [
                        TextSpan(
                          text: equipments,
                          style: TextStyle(
                              color: ColorSet.primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ])),
                  SizedBox(
                    height: height * .02,
                  ),
                  Divider(
                    thickness: 1,
                    color: ColorSet.primaryColor.withOpacity(.6),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Text(
                    'How to do :',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  Text(dec)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
