import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Models/Products_model.dart';
import 'package:maryamreda_0522052/Services/Products_services.dart';

class ProductsProvider extends ChangeNotifier
{
  ProductModel? productdata;

  Future<void>fetchProducts()async
  {
    productdata=await ProductServices.getdata();
    notifyListeners();
  }

}