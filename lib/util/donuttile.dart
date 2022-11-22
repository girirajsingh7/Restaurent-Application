
import 'package:flutter/material.dart';

import 'dontudetail.dart';
class DonutTitle extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

   DonutTitle({
    Key? key, required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,

  }) : super(key: key);
  List <String> description=[
    'This is a Flavored Donut with toping as Ice Cream and Candies on top of it. Giving an Intresting Taste of Ice Cream on Donuts. ',
    'This is a Flavored Donut with toping as Strawberry and Candies on top of it. Giving an Intresting Taste of Strawberry on Donuts. ',
    'This is a Flavored Donut with toping as Grapes Ape and Candies on top of it. Giving an Intresting Taste of Grapes ape  on Donuts. ',
    'This is a Flavored with toping as Choco and Candies on top of it. Giving an Intresting Taste of Choco on Donuts. ',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: FloatingActionButton(
        elevation: 0,
        splashColor: Colors.purple,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Dondetail(
            Name:donutFlavor,
            price: donutPrice,
            lcolor: donutColor,
            des:'This is a Flavored with toping as Choco and Candies on top of it. Giving an Intresting Taste of Choco on Donuts. ',

          ) ));
        },
        child: Container(
          decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(12)

          ),
          child: Column(
            children: [
              //price
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Container(
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(12),topRight: Radius.circular(12))
                    ),
                      padding: const EdgeInsets.all(12),
                      child: Text("\$" + donutPrice,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: donutColor[800],
                        ),
                      )),
                ],
              ),

              //donut picture
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36,vertical: 12),
                child: Image.asset(imageName),
              ),
              //donut flavor
              Text(donutFlavor,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              ),
              const SizedBox(height: 4,),
              Text("Dunkins",
              style: TextStyle(color: Colors.grey[600]),),
              //love icon
              Padding(
                padding: const EdgeInsets.all( 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite,
                      color: Colors.pink[400],
                    ),
                    Icon(Icons.add,
                      color: Colors.grey[800],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
