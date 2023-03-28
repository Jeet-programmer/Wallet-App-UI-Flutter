import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({super.key,
  required this.iconImagePath,
  required this.buttonText,});

  @override
  Widget build(BuildContext context) {
    return Column(
              children: [
                Container(
              height: 80,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 42, 41, 41),
                    blurRadius: 20,
                    spreadRadius: 8,
                  ),
                ]
              ),
              child: Center( child: Image.network(iconImagePath),),
            ),
            SizedBox(height: 12),
            Text(buttonText,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 32, 31, 31),
            ),)
              ],
            );
  }
}