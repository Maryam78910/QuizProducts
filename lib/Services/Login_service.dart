
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:maryamreda_0522052/Models/Login_model.dart';
import 'package:maryamreda_0522052/Models/Registration_model.dart';

class LoginService
{
  static Dio dio=Dio();

  static Future<void>logindata(UserModelLogin user,bool status)async
  {
    try
    {
      Response response =await dio.post('https://student.valuxapps.com/api/login',
          data: {
            user.email,
            user.password,

          }
      );
      if(response.statusCode==200)
      {
        print('${status}');
        print('${response.data}');

      }

    }
    catch(e)
    {
      print("Error :$e");
      throw Exception("Invalid Data");

    }
  }
}