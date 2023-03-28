// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_button.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:walletappui/util/my_lists.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 231, 231),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      backgroundColor: Colors.pink,
      child: Icon(Icons.monetization_on),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 30.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Text("MY",
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 20),),
              Text(' Cards',
              // ignore: prefer_const_constructors
              style:TextStyle(fontSize: 28),),
              ],),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add,
                size: 35)),
            ],)),
            SizedBox(height: 25),
            
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 250.20,
                  expiryMonth: 12,
                  expiryYear: 25,
                  cardNumber: "**********5642",
                  color: Colors.deepPurpleAccent,
                ),
                MyCard(balance: 390.70,
                  expiryMonth: 02,
                  expiryYear: 24,
                  cardNumber: "**********7536",
                  color: Colors.pink,),
                MyCard(balance: 5630.20,
                  expiryMonth: 10,
                  expiryYear: 27,
                  cardNumber: "**********4533",
                  color: Colors.green,),
              ],
            ),
          ),
      
          SizedBox(height: 10),
          SmoothPageIndicator(
            controller: _controller, 
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.grey,
            ),
            ),
          SizedBox(height: 20),
      
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(width: 20),
                MyButton(iconImagePath: "https://w7.pngwing.com/pngs/936/836/png-transparent-computer-icons-currency-money-bank-i-ll-send-you-the-money-thumbnail.png", buttonText: "Send"),
                // SizedBox(width: 20),
                MyButton(iconImagePath: "https://cdn-icons-png.flaticon.com/512/5363/5363211.png", buttonText: "Receive"),
                MyButton(iconImagePath: "https://cdn-icons-png.flaticon.com/512/552/552791.png", buttonText: "Bill")
              ],
            ),
          ),
      
          MyList(iconImage: 'https://cdn-icons-png.flaticon.com/512/4624/4624025.png', listHeading: "Statistics", listSubHeading: "Payments and income"),
          MyList(iconImage: "https://thumbs.dreamstime.com/b/transaction-history-icon-transaction-history-icon-simple-vector-illustration-215661773.jpg", listHeading: 'History', listSubHeading: "See all your payments history"),
          MyList(iconImage: "https://freepngimg.com/download/machine/55104-8-rewards-download-free-download-png-hq.png", listHeading: "Rewards", listSubHeading: "Check your winnings")
      
          ],
        ),
      ),
      
    );
  }
}