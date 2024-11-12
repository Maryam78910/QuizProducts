import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:maryamreda_0522052/Providers/Products_provider.dart';

import '../Widgets/Products_widget.dart';
class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
//hello
      body: Consumer<ProductsProvider>(builder: (context, value, child) {

        final productpro=value.productdata;

        if(productpro==null)
          {
            value.fetchProducts();
            return
                Center(
                  child:CircularProgressIndicator() ,
                );
          }
        else
          {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
              (
              crossAxisCount: 2,
                mainAxisExtent: 2,
              childAspectRatio: 3/2,

              ),
              itemBuilder: (context, index) => ProductItem(
                  name:productpro.Products.elementAt(index),
                  image: productpro.Products.elementAt(index),
                  price: productpro.Products.elementAt(index)

              ),
              itemCount: productpro.Products.length,


            );
          }

      },),


    );
  }
}
