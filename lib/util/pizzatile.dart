import 'package:flutter/material.dart';
import 'package:practise17/util/pizzdetail.dart';
class PizzaTile extends StatelessWidget {
  final String pizzaName;
  final String pizzaPrize;
  final pColor;
  final imagesrc;
  const PizzaTile({Key? key,
    required this.pizzaName,
    required this.pizzaPrize,
    required this.pColor,
    required this.imagesrc, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizdetail(price: pizzaPrize, Name: pizzaName, des: 'This is a Flavored with toping as Choco and Candies on top of it. Giving an Intresting Taste of Choco on Donuts. ', lcolor: pColor,)));
        },
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            color: pColor[50],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: pColor[300],
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(12))
                    ),
                      child: Text('${pizzaPrize}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: pColor[900]
                      ),
                      )),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0,vertical: 12),
                child: Image.asset(imagesrc),
              ),
              SizedBox(height: 8,),
              Text(
                pizzaName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8,),
              Text('Dunkins',
                style: TextStyle(

                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite,color: Colors.pink,),
                    Icon(Icons.add,color: Colors.grey[900],),
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
