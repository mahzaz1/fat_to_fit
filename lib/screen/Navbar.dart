import 'package:fat_to_fit/Utils/Strings/Color.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Calculator.dart';
import 'Diet.dart';
import 'Exercises/Exercises.dart';
import 'Tips.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;


  static Set<Widget> _widgetOptions = <Widget>{
    Exercises(),
    Tips(),
    Diet(),
    Calculator(),

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: GNav(
            gap: 10,
            tabBackgroundColor: ColorSet.primaryColor,
            backgroundColor: Colors.black,
            padding: EdgeInsets.all(10),
            onTabChange: (index){
              setState(() {
                _selectedIndex = index;
              });
            },
            tabs: [
              GButton(
                  icon: FontAwesomeIcons.dumbbell,
                text: 'Exercises',
              ),
              GButton(icon: FontAwesomeIcons.calculator,
                text: 'BMI',
              ),
              GButton(icon: Icons.tips_and_updates_outlined,
                text: 'Tips',
              ),
              GButton(icon: Icons.no_meals_ouline,
                text: 'Diet',
              ),
            ],
          ),
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
