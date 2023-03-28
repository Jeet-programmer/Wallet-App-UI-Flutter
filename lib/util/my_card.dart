import 'dart:ffi';

import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
final double balance;
final String cardNumber;
final int expiryMonth;
final int expiryYear;
final color;

  const MyCard
({super.key,
required this.balance,
required this.cardNumber,
required this.expiryMonth,
required this.expiryYear,
required this.color,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height:20),
                  Text("Balance",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  SizedBox(height:10),
                  Text("\$"+balance.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  ),
                  SizedBox(height:30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cardNumber,
                      style: TextStyle(
                    color: Colors.white,
                  ),
                      ),
                      Text(expiryMonth.toString()+ "/" + expiryYear.toString(),
                      style: TextStyle(
                    color: Colors.white,
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