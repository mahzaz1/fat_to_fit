import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_choice_chip/flutter_3d_choice_chip.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key? key, required this.onchange}) : super(key: key);

  final Function(int) onchange;

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  int _gender = 0;

  final ChoiceChip3DStyle selected = ChoiceChip3DStyle(
      topColor: ColorSet.primaryColor,
      backColor: Colors.grey,
      borderRadius: BorderRadius.circular(20));

  final ChoiceChip3DStyle unselected = ChoiceChip3DStyle(
      topColor: Colors.grey,
      backColor: ColorSet.primaryColor,
      borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ChoiceChip3D(
          width: 140,
          height: 120,
            onSelected: () {
              setState(() {
                _gender = 1;
              });
              widget.onchange(_gender);
            },
            onUnSelected: () {},
            selected: _gender == 1,
            style: _gender == 1 ? selected : unselected,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/man.png',
                  width: width * .22,
                ),
                SizedBox(height: height * .01),
                Text(
                  'Male',
                  style: TextStyle(color: Colors.black),
                )
              ],
            )),
        ChoiceChip3D(
            width: 140,
            height: 120,
            onSelected: () {
              setState(() {
                _gender = 2;
              });
              widget.onchange(_gender);

            },
            onUnSelected: () {},
            selected: _gender == 2,
            style: _gender == 2 ? selected : unselected,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/woman.png',
                  width: width * .22,
                ),
                SizedBox(height: height * .01),
                Text(
                  'Female',
                  style: TextStyle(color: Colors.black),
                )
              ],
            )),
      ],
    );
  }
}
