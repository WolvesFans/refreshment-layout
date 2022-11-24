import 'package:flutter/material.dart';
import 'package:layout1/util/cake_tile.dart';
import 'package:layout1/util/cake_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of cake types
  final List cakeType = [
    // [cake type, isSelected]
    [
      'Foods',
      true,
    ],
    [
      'Ice',
      false,
    ],
    [
      'Drinks',
      false,
    ],
  ];

  //tapped on cake types
  void cakeTypeSelected(int index) {
    setState(() {
      // for loop ini bikin stiap pilihan false
      for (int i = 0; i < cakeType.length; i++) {
        cakeType[i][1] = false;
      }
      cakeType[index][1] = true;
    });
  }

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
          //Welcome to Mama's Kitchen
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

          // listview category
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cakeType.length,
              itemBuilder: (context, index) {
                return CakeType(
                  cakeType: cakeType[index][0],
                  isSelected: cakeType[index][1],
                  onTap: () {
                    cakeTypeSelected(index);
                  },
                );
              },
            ),
          ),

          //listview menu
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CakeTile(
                  cakeImagePath: 'lib/images/donut.png',
                  cakeName: 'Donuts',
                  cakeText: 'Chocolate donuts',
                  cakePrice: '10.000',
                ),
                CakeTile(
                  cakeImagePath: 'lib/images/cheesecake.png',
                  cakeName: 'Cheesecake',
                  cakeText: 'Slice of cheese cake',
                  cakePrice: '15.000',
                ),
                CakeTile(
                  cakeImagePath: 'lib/images/sundae.png',
                  cakeName: 'Sundae',
                  cakeText: 'Three-way sundae',
                  cakePrice: '12.000',
                ),
                CakeTile(
                    cakeImagePath: 'lib/images/ice cream.png',
                    cakeName: 'Cone Ice Cream',
                    cakeText: 'Three-way ice cream',
                    cakePrice: '8.000'),
                CakeTile(
                  cakeImagePath: 'lib/images/americano.png',
                  cakeName: 'Coffee',
                  cakeText: 'Americano coffee',
                  cakePrice: '12.000',
                ),
                CakeTile(
                  cakeImagePath: 'lib/images/tea.png',
                  cakeName: 'Hot Tea',
                  cakeText: 'Jasmine Sweet Tea',
                  cakePrice: '10.000',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
