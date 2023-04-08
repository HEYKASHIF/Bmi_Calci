import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  const IconContent({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 18,
              color: Color(
                0xFF8D8E98,
              )),
        )
      ],
    );
  }
}
