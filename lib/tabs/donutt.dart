import 'package:flutter/material.dart';

import '../util/donuttile.dart';
class DonutTab extends StatelessWidget {


  //list of donuts
  List _donutsOnSale=[
    ['Ice Cream','36',Colors.blue,'lib/images/donut.png','https://saltandbaker.com/wp-content/uploads/2021/09/Oreo-Donuts-3.jpg',
    ],
    ['Strawberry','48',Colors.red,'lib/images/donut (1).png','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThqhdait4akv4igr0HODfBXKyPjIBEqDwa4k0jn8JGN-87PQpqyoz4hNvUbKp5CiE6ckE&usqp=CAU',
    ],
    ['Grapes Ape','84',Colors.purple,'lib/images/donut (2).png','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThqhdait4akv4igr0HODfBXKyPjIBEqDwa4k0jn8JGN-87PQpqyoz4hNvUbKp5CiE6ckE&usqp=CAU',
    ],
    ['Choco','98',Colors.brown,'lib/images/donut (3).png','https://styles.redditmedia.com/t5_2sj2x/styles/communityIcon_t53vnpqr3zv41.png',
    ],
  ];

  DonutTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: _donutsOnSale.length,
        padding: EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 1/1.5
        ),
        itemBuilder: (context, index) {
          return DonutTitle(
            donutFlavor: _donutsOnSale[index][0],
            donutPrice: _donutsOnSale[index][1],
            donutColor: _donutsOnSale[index][2],
            imageName: _donutsOnSale[index][3],
            // lasimg[]: _donutsOnSale[index][4],
          );
        }
    );
  }
}
