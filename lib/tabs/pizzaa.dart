import 'package:flutter/material.dart';

import '../util/pizzatile.dart';
class PizzaTab extends StatelessWidget {
  List pizzaOnSale =[
    ['Cheeze Pizza','50',Colors.blue,'lib/smoopizza/pizza.png'],
    ['Margherita Pizza','64',Colors.pink,'lib/smoopizza/pizza (1).png'],
    ['Pepperoni Pizza','74',Colors.purple,'lib/smoopizza/pizza (2).png'],
    ['BBQ Pizza','82',Colors.brown,'lib/smoopizza/pizza (3).png'],
  ];
   PizzaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: pizzaOnSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.5), itemBuilder: (context,index){
      return PizzaTile(
        pizzaName:pizzaOnSale[index][0],
        pizzaPrize:pizzaOnSale[index][1],
        pColor:pizzaOnSale[index][2],
        imagesrc:pizzaOnSale[index][3],

      );
    }
    );
  }
}
