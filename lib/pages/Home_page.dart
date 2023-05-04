import 'package:bmi_calci/constant/colors.dart';
import 'package:bmi_calci/widgets/Icon_Content.dart';
import 'package:bmi_calci/widgets/Reusable_Card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender SelectedGender = Gender.female;
  int Height = 178;
  int Weight = 55;
  int Age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 47, 48, 49),
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    CardChild: IconContent(
                      color: Colors.blue,
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    color: SelectedGender == Gender.male
                        ? ActiveCardColor
                        : InactiveCardColor,
                    onPress: () {
                      setState(() {
                        SelectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    CardChild: IconContent(
                      color: Colors.pink,
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    color: SelectedGender == Gender.female
                        ? ActiveCardColor
                        : InactiveCardColor,
                    onPress: () {
                      setState(() {
                        SelectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT(cm)',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    Height.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Color.fromARGB(255, 148, 241, 9),
                        inactiveTrackColor: Colors.black,
                        thumbColor: Color.fromARGB(255, 93, 227, 10),
                        overlayColor: Color.fromARGB(255, 38, 234, 12)),
                    child: Slider(
                      value: Height.toDouble(),
                      min: 100,
                      max: 300,
                      onChanged: (double newHeight) {
                        setState(() {
                          Height = newHeight.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              onPress: () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT(Kg)',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          Weight.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
                        )
                      ],
                    ),
                    color: Colors.white,
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    CardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          Age.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [],
                        )
                      ],
                    ),
                    color: Colors.white,
                    onPress: () {},
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
