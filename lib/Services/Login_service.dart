
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:maryamreda_0522052/Models/Registration_model.dart';

class LoginService
{
  static Dio dio=Dio();

  static Future<UserModel>logindata(String email,String password)async
  {
    try
    {
      Response response =await dio.post('https://student.valuxapps.com/api/login',
          data: {
         "email":email,
            "password":password,

          }
      );
      if(response.statusCode==200)
      {
        return UserModel.fromJson(response.data);

      }
      else
        {
          throw Exception("error get data");
        }

    }
    catch(e)
    {
      print("Error :$e");
      throw Exception("Invalid Data");

    }
  }
}