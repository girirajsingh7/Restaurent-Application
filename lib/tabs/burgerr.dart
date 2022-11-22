import 'package:flutter/material.dart';

import '../util/burgertie.dart';
class BurgerTab extends StatelessWidget {
  BurgerTab({Key? key}) : super(key: key);

  List burgerOnSale=[
    ["Spicy  Burger",'24',Colors.blue,'lib/bur/burger.png'],
    ["Barbecue  Burger",'32',Colors.pink,'lib/bur/cheeseburger.png'],
    ["Cheesy  Burger",'56',Colors.deepOrange,'lib/bur/hamburger.png'],
    ["Meat  Burger",'100',Colors.lime,'lib/bur/hamburger (1).png'],

  ];
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: burgerOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 1/1.5,
      ),
      padding: EdgeInsets.all(12),
      itemBuilder: (context,index){
        return BurgerTile(
          burgerName:burgerOnSale[index][0],
          burgerPrice:burgerOnSale[index][1],
          burgerColor:burgerOnSale[index][2],
          imagesrc:burgerOnSale[index][3],
        );

      },
      );

  }
}
