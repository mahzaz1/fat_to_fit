import 'Strings/ABS.dart';
import 'Strings/Back.dart';
import 'Strings/Bicep.dart';
import 'Strings/Calfs.dart';
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
    "assets/images/Exercises/Calfs.png",
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
    'Calfs',
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
    CalfsSet.calfsGameName,
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
    CalfsSet.calfsGameGif,
    ForearmSet.forearmGameGif,
    CardioSet.cardioGameGif,
  ];

  static List<List> muscleUsedList = [
    ChestSet.chestGameMuscle,
    BicepSet.bicepGameMuscle,
    ChestSet.chestGameMuscle,
    ChestSet.chestGameMuscle,
    ChestSet.chestGameMuscle,
    ChestSet.chestGameMuscle,
    ChestSet.chestGameMuscle,
    ChestSet.chestGameMuscle,
    ChestSet.chestGameMuscle,
    ChestSet.chestGameMuscle,
  ];

  static List<List> equipmentsList = [
    ChestSet.chestGameEquipment,
    BicepSet.bicepGameEquipments,
    ChestSet.chestGameEquipment,
    ChestSet.chestGameEquipment,
    ChestSet.chestGameEquipment,
    ChestSet.chestGameEquipment,
    ChestSet.chestGameEquipment,
    ChestSet.chestGameEquipment,
    ChestSet.chestGameEquipment,
    ChestSet.chestGameEquipment,
  ];

  static List<List> levelsList = [
    ChestSet.chestGameLevel,
    BicepSet.bicepGameLevel,
    TricepSet.tricepGameLevel,
    ShoulderSet.shoulderGameLevel,
    AbsSet.absGameLevel,
    BackSet.backGameLevel,
    LegsSet.legsGameLevel,
    CalfsSet.calfsGameLevel,
    ForearmSet.forearmGameLevel,
    CardioSet.cardioGameLevel
  ];
}