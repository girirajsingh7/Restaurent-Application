import 'package:flutter/material.dart';
import 'package:practise17/util/smoodetail.dart';
class Smoothitiles extends StatelessWidget {
  final String smoothiName;
  final String smoothiPrice;
  final smothieColor;
  final String imagesrc;

  const Smoothitiles({Key? key,
    required this.smoothiName,
    required this.smoothiPrice,
    required this.smothieColor,
    required this.imagesrc,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: FloatingActionButton(

      onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SmootDetail(Name: smoothiName, price: smoothiPrice, lcolor: smothieColor, des: 'This is a Flavored with toping as Choco and Candies on top of it. Giving an Intresting Taste of Choco on Donuts. ')));
      },
        elevation: 0,

        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: smothieColor[50],
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [


                     Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(12)),
                        color: smothieColor[300],


                      ),
                      child: Text('\$'+smoothiPrice,
                        style: TextStyle(
                          color: smothieColor[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:036.0,vertical: 10),
                child: Image.asset(imagesrc),
              ),
              SizedBox(height: 12,),
              Text(smoothiName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 12,),
              Text('Dunkins',
              style: TextStyle(
                color: Colors.grey[700]
              ),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite,
                    color: Colors.pink,),
                    Icon(Icons.add,
                    color: Colors.grey[900],
                    ),
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
