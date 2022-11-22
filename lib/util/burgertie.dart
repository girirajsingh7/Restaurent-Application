import 'dart:ffi';

import 'package:flutter/material.dart';

import 'burdetail.dart';
class BurgerTile extends StatelessWidget {
  final String burgerName;
  final String burgerPrice;
  final burgerColor;
  final imagesrc;
  const BurgerTile({Key? key,
    required this.burgerName,
    required this.burgerPrice,
    required this.burgerColor,
    required this.imagesrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: FloatingActionButton(
        elevation: 0,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Burdetail(des:'This is a Flavored with toping as Choco and Candies on top of it. Giving an Intresting Taste of Choco on Donuts. ',
            Name: burgerName,
            lcolor: burgerColor,
             price: burgerPrice,

          )));

        },
        child: Container(
          decoration: BoxDecoration(
            color: burgerColor[50],
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: burgerColor[200],
                      borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12))
                    ),
                    padding: EdgeInsets.all(12),


                      child: Text('\$'+burgerPrice,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: burgerColor[900]

                        ),
                      ),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0,vertical: 8),
                child: Image.asset(imagesrc),
              ),

              Text(burgerName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 12,),

              Text('Dunkins',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite,
                    color: Colors.pink[400],
                    ),
                    Icon(Icons.add,
                    color: Colors.grey[600],
                    ),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
