import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practise17/tabs/burgerr.dart';
import 'package:practise17/tabs/donutt.dart';
import 'package:practise17/tabs/panncake.dart';
import 'package:practise17/tabs/pizzaa.dart';
import 'package:practise17/tabs/smooothi.dart';
import 'package:practise17/util/my_tab.dart';
import 'package:practise17/util/profile.dart';
class HomePage extends StatefulWidget {
  // final String  liked;

  HomePage({Key? key, }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
var _card;
GlobalKey<ScaffoldState> _scaffoldKEy=GlobalKey<ScaffoldState>();
// GlobalKey<MyTab> _homePageKEy=GlobalKey<HomePage>();

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const[
    //donut tab
    MyTab(iconPath: 'lib/icons/donut.png'),
    MyTab(iconPath: 'lib/icons/burger.png'),
    MyTab(iconPath: 'lib/icons/avocado.png'),
    // MyTab(iconPath: 'lib/icons/pancakes.png'),
    MyTab(iconPath: 'lib/icons/pizza.png'),
    // MyTab(iconPath: 'lib/images/donut.png')

    //burger tab
    //smoothi tab
    //pancake tab
    //pizza tab
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        key:_scaffoldKEy,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ), onPressed: () =>_scaffoldKEy.currentState?.openDrawer(),
              )
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ), onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));


                //do some task on tapping the button
              },

              ),
            ),

          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.purple[50],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: (){
                        Navigator.pop(context);
                      },
                        elevation: 0,
                        // focusColor: Colors.pink,
                        backgroundColor: Colors.purple[800],

                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 29,),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    // Navigator.pop(context);
                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple[50],
                      elevation: 0
                    ),
                  child: DrawerHeader(child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.person,size: 30,),
                          radius: 34,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Giriraj singh',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),),
                            Text('Chundawat',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                              ),)
                          ],
                        )

                      ],
                    ),
                  )),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23.0,vertical: 0),
                  child: Text('Navigate To....',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                  ),
                ),
                SizedBox(height: 34,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('lib/icons/donut.png',height: 40,width: 40,),
                          Text('Donut Tab',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),
                        ],


                      ),
                    )
                ),
                SizedBox(height: 12,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('lib/icons/burger.png',height: 40,width: 40,),
                          Text('Burger Tab',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),
                        ],


                      ),
                    )
                ),
                SizedBox(height: 12,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('lib/icons/avocado.png',height: 40,width: 40,),
                          Text('Smoothi Tab',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),
                        ],


                      ),
                    )
                ),
                SizedBox(height: 12,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('lib/icons/pizza.png',height: 40,width: 40,),
                          Text('Pizza Tab',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black
                            ),
                          ),
                        ],


                      ),
                    )
                ),

              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              // padding: const EdgeInsets.all(24.0),
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'I want to eat',
                        style: TextStyle(

                          fontSize: 22,
                        ),
                      ),
                      Text(
                        ' EAT',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),

                      ),
                    ],
                  ),
                  Badge(
                    badgeContent: Text('9',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    badgeColor: Colors.blue,
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.shopping_cart,
                      size: 32,
                      color: Colors.grey[700],
                    ),
                  ),
                  Badge(
                    badgeContent: Text('4',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),

                    padding: EdgeInsets.all(5),
                    badgeColor: Colors.blue,

                    child: Icon(Icons.favorite,
                      size: 32,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),

            //tab
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  //donut page
                  DonutTab(),

                  //burgr page
                  BurgerTab(),
                  //smoothi page
                  SmoothiTab(),


                  //pancake page
                  // PancakeTab(),

                  //pizza page
                  PizzaTab(),
                ],
              ),
            ),


          ],

        ),
      ),
    );
  }

}