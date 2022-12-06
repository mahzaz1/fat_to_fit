import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:fat_to_fit/Utils/Strings/Tips.dart';
import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/SplashScreen.png',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/tips.jpg'),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Top 10 tips for exercise beginners'.toUpperCase(),style: TextStyle(
                  fontSize: height * .04,
                ),),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: Tipss.heading.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Text('${index+1}'),
                              title: Text(Tipss.heading[index].toUpperCase(),
                                style: TextStyle(
                                  color: ColorSet.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: height * .027,
                                ),),
                              subtitle: Text(Tipss.details[index]),
                            ),
                            // Align(
                            //   alignment: AlignmentDirectional.centerStart,
                            //   child: Text(Tipss.heading[index].toUpperCase(),
                            //     style: TextStyle(
                            //         color: ColorSet.primaryColor,
                            //         fontWeight: FontWeight.bold,
                            //         fontSize: 20,
                            //     ),),
                            // ),
                            // Text(Tipss.details[index]),
                            SizedBox(height: height * .027,),
                            Divider(
                              thickness: 1,
                              color: ColorSet.primaryColor.withOpacity(.6),
                            ),

                          ],
                        ),
                      );
                    }),
              ),



            ],
          )
        ],
      ),
    );
  }
}