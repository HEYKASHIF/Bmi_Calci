import 'package:bmi_calci/widgets/Icon_Content.dart';
import 'package:bmi_calci/widgets/Reusable_Card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
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
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    color: Colors.pink,
                    onPress: () {},
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    CardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    color: Colors.pink,
                    onPress: () {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              CardChild: Column(
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Slider(
                    value: 140,
                    min: 100,
                    max: 300,
                    onChanged: null,
                  )
                ],
              ),
              color: Colors.pink,
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
