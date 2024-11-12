import 'package:dio/dio.dart';
import 'package:maryamreda_0522052/Models/Products_model.dart';

class ProductServices
{
  static Dio dio=Dio();

  static Future<ProductModel>getdata()async
  {
    try
    {
      Response response =await dio.get('https://student.valuxapps.com/api/home',);

      if(response.statusCode==200)
      {
       return ProductModel.fromJson(response.data);

      }
      else
        {
          throw Exception("Error can not load page");
        }

    }
    catch(e)
    {
      print("Error :$e");
      throw Exception("Error can not fetch data");

    }
  }
}