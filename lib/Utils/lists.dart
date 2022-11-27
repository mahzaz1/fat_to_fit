import 'Strings/ABS.dart';
import 'Strings/Back.dart';
import 'Strings/Bicep.dart';
import 'Strings/Calves.dart';
import 'Strings/Cardio.dart';
import 'Strings/Chest.dart';
import 'Strings/Forearm.dart';
import 'Strings/Legs.dart';
import 'Strings/Shoulder.dart';
import 'Strings/Tricep.dart';

class Lists{
  static List exercises = [
    "assets/images/Exercises/Chest.png",
    "assets/images/Exercises/Bicep.png",
    "assets/images/Exercises/Tricep.png",
    "assets/images/Exercises/Shoulder.png",
    "assets/images/Exercises/ABS.png",
    "assets/images/Exercises/Back.png",
    "assets/images/Exercises/Legs.png",
    "assets/images/Exercises/Calves.png",
    "assets/images/Exercises/Forearm.png",
    "assets/images/Exercises/Cardio.png",
  ];

  static List<String> muscleName = [
    'Chest',
    'Bicep',
    'Tricep',
    'Shoulder',
    'ABS',
    'Back',
    'Legs',
    'Calves',
    'Forearms',
    'Cardio'
  ];

  static List<List> nameList = [
    ChestSet.chestGameName,
    BicepSet.bicepGameName,
    TricepSet.tricepGameName,
    ShoulderSet.shoulderGameName,
    AbsSet.absGameName,
    BackSet.backGameName,
    LegsSet.legsGameName,
    CalvesSet.calvesGameName,
    ForearmSet.forearmGameName,
    CardioSet.cardioGameName,
  ];

  static List<List> giflist = [
    ChestSet.chestGameGif,
    BicepSet.bicepGameGif,
    TricepSet.tricepGameGif,
    ShoulderSet.shoulderGameGif,
    AbsSet.absGameGif,
    BackSet.backGameGif,
    LegsSet.legsGameGif,
    CalvesSet.calvesGameGif,
    ForearmSet.forearmGameGif,
    CardioSet.cardioGameGif,
  ];

  static List<List> muscleUsedList = [
    ChestSet.chestGameMuscle,
    BicepSet.bicepGameMuscle,
    TricepSet.tricepGameMuscle,
    ShoulderSet.shoulderGameMuscle,
    AbsSet.absGameMuscle,
    BackSet.backGameMuscle,
    LegsSet.legsGameMuscle,
    CalvesSet.calvesGameMuscle,
    ForearmSet.forearmGameMuscle,
    CardioSet.cardioGameMuscle
  ];

  static List<List> equipmentsList = [
    ChestSet.chestGameEquipment,
    BicepSet.bicepGameEquipments,
    TricepSet.tricepGameEquipments,
    ShoulderSet.shoulderGameEquipments,
    AbsSet.absGameEquipments,
    BackSet.backGameEquipments,
    LegsSet.legsGameEquipments,
    CalvesSet.calvesGameEquipments,
    ForearmSet.forearmGameEquipments,
    CardioSet.cardioGameEquipments

  ];

  static List<List> levelsList = [
    ChestSet.chestGameLevel,
    BicepSet.bicepGameLevel,
    TricepSet.tricepGameLevel,
    ShoulderSet.shoulderGameLevel,
    AbsSet.absGameLevel,
    BackSet.backGameLevel,
    LegsSet.legsGameLevel,
    CalvesSet.calvesGameLevel,
    ForearmSet.forearmGameLevel,
    CardioSet.cardioGameLevel
  ];

  static List<List> decList = [
    ChestSet.gameDec,
    BicepSet.gameDec,
    TricepSet.gameDec,
    ShoulderSet.gameDec,
    AbsSet.gameDec,
    BackSet.gameDec,
    LegsSet.gameDec,
    CalvesSet.gameDec,
    ForearmSet.gameDec,
    CardioSet.gameDec,
];



}