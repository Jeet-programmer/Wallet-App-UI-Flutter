// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String iconImage;
  final String listHeading;
  final String listSubHeading;
  const MyList({super.key,
  required this.iconImage,
  required this.listHeading,
  required this.listSubHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                    height: 80,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.network(iconImage),
                  ),

                  SizedBox(width: 22),
        
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(listHeading,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
                      SizedBox(height: 12),
                      Text(listSubHeading),
                    ],
                  ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              )
            ],
          ),
        );
  }
}