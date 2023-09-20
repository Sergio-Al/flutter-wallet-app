import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key,
    required this.icon,
    required this.buttonText,
    this.colorIcon = Colors.black,
  });

  final IconData icon;
  final String buttonText;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 20,
                  spreadRadius: 10,
                )
              ]),
          child: Center(
            child: Icon(
              icon,
              size: 50,
              color: colorIcon,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // text
        Text(
          buttonText,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
