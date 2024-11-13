import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:maryamreda_0522052/Models/Registration_model.dart';

class SignupService
{
  static Dio dio=Dio();
  
  static Future<void>regisetdata(String phone,String name,String email,String password)async
  {
    try
        {
          Response response =await dio.post('https://student.valuxapps.com/api/register',
            data: {
            "name":name,
              "phone":phone,
              "password":password,
              "email":email,
            }
          );

          if(response.statusCode==200)
            {
              print(response.data);

            }

        }
        catch(e)
        {
          print("Error :$e");
          throw Exception("Invalid Data");

        }
  }
}