// import 'dart:ffi';
// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dondetail extends StatefulWidget {
  final String Name;
  final String price;
  final lcolor;
  final String des;


   Dondetail({Key? key,
    required this.Name,
    required this.price,
    required this.lcolor,
     required this.des, }) : super(key: key);

  @override
  State<Dondetail> createState() => _DondetailState();
}
bool clicked=false;
class _DondetailState extends State<Dondetail> {
  final List<String> imgList=[
    'https://saltandbaker.com/wp-content/uploads/2021/09/Oreo-Donuts-3.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThqhdait4akv4igr0HODfBXKyPjIBEqDwa4k0jn8JGN-87PQpqyoz4hNvUbKp5CiE6ckE&usqp=CAU',
    'https://styles.redditmedia.com/t5_2sj2x/styles/communityIcon_t53vnpqr3zv41.png',
  ];

  bool click=true;

 int counter=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: widget.lcolor[50],
          child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(onPressed: (){
                      Navigator.pop(context);
                    },

                      child: Icon(Icons.arrow_back_outlined,size: 30,color: Colors.black,),
                    backgroundColor: widget.lcolor[200],
                    ),
                    Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),topRight: Radius.circular(12)),
                        color: widget.lcolor[200],
                      ),
                      child: Text('\$'+widget.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 34,
                        color: widget.lcolor[900]
                      ),
                      ),
                    )

                  ],
                ),
              ),
              SizedBox(height: 24,),
              CarouselSlider(items: imgList.map((item) => Container(
                child: Center(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                  child: Image.network(item,fit: BoxFit.cover,width: 1000,)),),)).toList(), options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              )),
              SizedBox(height: 32,),
              Padding(
                padding:  EdgeInsets.only(left:32.0,right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.Name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: widget.lcolor[600],
                      ),
                    ),
                    IconButton(onPressed: () {
                      if(clicked==true){
                        setState(() {
                          clicked=false;
                        });
                      }
                      else{
                        setState(() {
                          clicked=true;
                          // HomePage(liked: '1');
                        });
                      }

                    },
                      icon: Icon((clicked==true) ?Icons.favorite:Icons.favorite_outline,color: Colors.pink[300],size: 35,),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(widget.des,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0,right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      setState(() {
                        counter++;
                      });
                    },

                    child: Icon(Icons.add,
                    size: 30,
                    ),
                    ),
                    Text('${counter}',
                      style: TextStyle(
                        color: widget.lcolor[900],
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),),
                    ElevatedButton(onPressed: (){
                      if(counter!=0){
                        setState(() {
                          counter--;
                        });
                      }
                    },
                      child: Icon(Icons.minimize,size: 30,),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  // mainAxisAlignment: sp,
                  children: [
                    ElevatedButton(
                        onPressed: () {  },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(12),
                            primary:Colors.green,
                            elevation: 20,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            )
                        ),
                        child: Icon(Icons.shopping_cart,size: 35,color: Colors.white,)),
                    SizedBox(width: 24,),
                    Expanded(
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,

                              shadowColor: Colors.black,
                              elevation: 20,
                              padding: EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),

                              )
                            // animationDuration: ,/
                          ),
                          child: Text("Order Now",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                            ),)
                      ),
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


