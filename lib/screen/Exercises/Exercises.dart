import 'package:fat_to_fit/Utils/Strings/Bicep.dart';
import 'package:fat_to_fit/Utils/Strings/Calves.dart';
import 'package:fat_to_fit/Utils/Strings/Cardio.dart';
import 'package:fat_to_fit/Utils/Strings/Chest.dart';
import 'package:fat_to_fit/Utils/Strings/Forearm.dart';
import 'package:fat_to_fit/Utils/Strings/Legs.dart';
import 'package:fat_to_fit/Utils/Strings/Shoulder.dart';
import 'package:fat_to_fit/Utils/Strings/Tricep.dart';
import 'package:flutter/material.dart';

import '../../Utils/Strings/ABS.dart';
import '../../Utils/Strings/Back.dart';
import '../../Utils/lists.dart';
import 'ExercisesList.dart';

class Exercises extends StatefulWidget {
  Exercises({Key? key}) : super(key: key);

  @override
  State<Exercises> createState() => _ExercisesState();
}

class _ExercisesState extends State<Exercises> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          'Workout',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: Lists.exercises.length,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExercisesList(
                                      appBarTitle: Lists.muscleName[index],
                                      gameName: Lists.nameList[index],
                                      gameGif: Lists.giflist[index],
                                      muscleUsed: Lists.muscleUsedList[index],
                                      gameLevel: Lists.levelsList[index],
                                      gameEquipments: Lists.equipmentsList[index],
                                  gameDec: Lists.decList[index],
                                    )));
                      },
                      child: Image.asset(Lists.exercises[index]));
                }),
          )
        ],
      ),
    );
  }
}
