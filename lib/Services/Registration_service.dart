import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:maryamreda_0522052/Models/Registration_model.dart';

class SignupService
{
  static Dio dio=Dio();
  
  static Future<void>regisetdata(UserModelSignip user)async
  {
    try
        {
          Response response =await dio.post('https://student.valuxapps.com/api/register',
            data: {
            user.phone,
              user.name,
              user.email,
              user.password,
            }
          );

          if(response.statusCode==200)
            {
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