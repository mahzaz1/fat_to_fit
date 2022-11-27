import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:fat_to_fit/screen/Exercises/ExerciseDetails.dart';
import 'package:flutter/material.dart';

import '../../Utils/Strings/Chest.dart';

class ExercisesList extends StatelessWidget {
  ExercisesList({
    Key? key,
    required this.appBarTitle,
    required this.gameName,
    required this.gameGif,
    required this.muscleUsed,
    required this.gameLevel,
    required this.gameEquipments,
    required this.gameDec,
  }) : super(key: key);

  String appBarTitle;
  List<dynamic> gameName;
  List<dynamic> gameGif;
  List<dynamic> muscleUsed;
  List<dynamic> gameLevel;
  List<dynamic> gameEquipments;
  List<dynamic> gameDec;




  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$appBarTitle Workout',
        ),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: gameName.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white10,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    gameName[index],
                                    style: TextStyle(fontSize: height * .023),
                                  ),
                                  SizedBox(
                                    height: height * .02,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ExerciseDetail(
                                                    gameName: gameName[index],
                                                    gameGif: gameGif[index],
                                                    muscleUsed: muscleUsed[index],
                                                    equipments: gameEquipments[index],
                                                    level: gameLevel[index],
                                                    dec: gameDec[index],
                                                  )));
                                    },
                                    child: Container(
                                      height: height * .04,
                                      width: width * .3,
                                      decoration: BoxDecoration(
                                          color: ColorSet.primaryColor,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child:
                                          Center(child: Text('View Details')),
                                    ),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  showDialog(context: context, builder: (_)=> Dialog(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                    backgroundColor: ColorSet.primaryColor,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                        image: AssetImage(gameGif[index]),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ));
                                },
                                child: Image(
                                  image: AssetImage(gameGif[index]),
                                  width: width * .22,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
