import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Providers/Products_provider.dart';
import 'package:maryamreda_0522052/Screens/Detailes_screen.dart';
import 'package:provider/provider.dart';

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
    // final p=Provider.of<ProductsProvider>(context);
    return Consumer<ProductsProvider>(
      builder: (context, value, child) {
        final productpro=value.productdata;
      return GestureDetector(
        onTap: ()
          {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>

                DetailesPage(name: , image: image, description: description)));

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
  });
  }
}
