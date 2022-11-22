import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SafeArea(


      child: Scaffold(
        body: Container(

          color: Colors.purple[50],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FloatingActionButton(onPressed: () {
                      Navigator.pop(context);
                    },
                      backgroundColor: Colors.purple[800],
                      child: Icon(
                        Icons.arrow_back_outlined, color: Colors.white, size: 29,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 0,),
              Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person,
                      size: 50,
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: 24,),
              Text('Giriraj Singh Chundawat',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,


              ),
              ),
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple[200],

                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(


                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Orders",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.shopping_cart,color: Colors.blueGrey[800],size: 40,),

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple[200],


                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Favorate",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.favorite,color: Colors.pink,size: 40,),

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple[200],


                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.settings,color: Colors.blue,size: 40,),

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple[200],


                      borderRadius: BorderRadius.circular(12)
                  ),
                  padding: EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Help and Feedback",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.help_outline,color: Colors.black87,size: 40,),

                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 300,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text(
                    'SIGH OUT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),

              ),




            ],
          ),
        ),
      ),
    );
  }
  }


