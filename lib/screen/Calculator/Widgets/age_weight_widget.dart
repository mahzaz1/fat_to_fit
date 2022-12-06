import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:flutter/material.dart';

class AgeWeightWidget extends StatefulWidget {
  const AgeWeightWidget({Key? key,
    required this.onchange,
    required this.title,
    required this.initValue,
    required this.min,
    required this.max,
  }) : super(key: key);

  final Function(int) onchange;
  final String title;
  final int initValue;
  final int min;
  final int max;

  @override
  State<AgeWeightWidget> createState() => _AgeWeightWidgetState();
}

class _AgeWeightWidgetState extends State<AgeWeightWidget> {

  int _counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.white12,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(widget.title,style: TextStyle(fontSize: 20),),
            SizedBox(height: height* .02,),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      if(_counter > widget.min){
                        _counter--;
                      }
                    });
                    widget.onchange(_counter);
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorSet.primaryColor,
                    child: Icon(Icons.remove,color: Colors.white,),
                  ),
                ),

                SizedBox(width: width * .05,),
                Text(_counter.toString(),textScaleFactor: 2,),
                SizedBox(width: width * .05,),

                InkWell(
                  onTap: (){
                    setState(() {
                      if(_counter < widget.max){
                        _counter++;
                      }
                    });
                    widget.onchange(_counter);
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: ColorSet.primaryColor,
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
