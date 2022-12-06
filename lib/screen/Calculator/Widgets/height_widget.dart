import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  HeightWidget({Key? key, required this.onchanged}) : super(key: key);

  final Function(int) onchanged;

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  int _height = 150;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white12,
        child: Column(
          children: [
            Text(
              'Height',
              textScaleFactor: 2.5,
            ),
            SizedBox(
              height: height * .01,
            ),
            RichText(
                text: TextSpan(
                    text: _height.toString(),
                    style: TextStyle(fontSize: 30),
                    children: [
                  TextSpan(
                    text: ' cm',
                    style: TextStyle(fontSize: 15),
                  )
                ])),
            Slider(
                min: 0,
                max: 240,
                value: _height.toDouble(),
                activeColor: ColorSet.primaryColor,
                thumbColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _height = value.toInt();
                  });
                  widget.onchanged(_height);
                })
          ],
        ),
      ),
    );
  }
}
