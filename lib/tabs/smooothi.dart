import 'package:flutter/material.dart';

import '../util/smoothitile.dart';
class SmoothiTab extends StatelessWidget {
  SmoothiTab({Key? key}) : super(key: key);

  List smoothiOnSale=[
    ["Mango Smoothi",'24',Colors.blue,'lib/smoopizza/mango.png'],
    ['Strawberry Smoothi','32',Colors.pink,'lib/smoopizza/smoothies.png'],
    ['Pineapple Smoothi','35',Colors.purple,'lib/smoopizza/pinsm.png'],
    ['Chocolate Smoothi','36',Colors.brown,'lib/smoopizza/punp.png'],
    ['Milky Smoothi','45',Colors.orange,'lib/smoopizza/mango.png'],

  ];

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      itemCount: smoothiOnSale.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 1/1.5,
        ), itemBuilder: (context,index){
      return Smoothitiles(
        smoothiName:smoothiOnSale[index][0],
        smoothiPrice:smoothiOnSale[index][1],
        smothieColor:smoothiOnSale[index][2],
        imagesrc: smoothiOnSale[index][3],

      );

    });
  }
}
