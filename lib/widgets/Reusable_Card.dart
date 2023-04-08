import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget CardChild;
  final Color color;
  final Function onPress;
  const ReusableCard(
      {required this.CardChild,
      required this.color,
      required this.onPress,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CardChild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
