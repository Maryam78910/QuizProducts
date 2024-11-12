import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Screens/Detailes_screen.dart';

class ProductItem extends StatelessWidget {
  
  final String image;
  final String name;
  final String price;
  
  const ProductItem(
      {super.key,
        required this.name,
        required this.image,
        required this.price,
      }
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
        {

        },

      child: Column(
        children: [
          Text(image),
          SizedBox(height: 20,),
          Text(name),
          SizedBox(height: 20,),
          Text(price),
        ],

      ),


    );
  }
}
