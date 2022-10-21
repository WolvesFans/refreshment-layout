import 'package:flutter/material.dart';
import 'package:layout1/util/cake_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          //I want to eat!
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Welcome to Mama's Kitchen!",
              style: TextStyle(
                fontSize: 34,
              ),
            ),
          ),

          SizedBox(height: 25),

          //listview menu
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CakeTile(
                  cakeImagePath: 'lib/images/donut.png',
                  cakeName: 'Donuts',
                  cakePrice: '10.000',
                ),
                CakeTile(
                  cakeImagePath: 'lib/images/cheesecake.png',
                  cakeName: 'Cheesecake',
                  cakePrice: '15.000',
                ),
                CakeTile(
                  cakeImagePath: 'lib/images/sundae.png',
                  cakeName: 'Sundae',
                  cakePrice: '12.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
