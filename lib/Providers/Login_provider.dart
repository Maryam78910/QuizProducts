import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Models/Login_model.dart';
import 'package:maryamreda_0522052/Models/Registration_model.dart';
import 'package:maryamreda_0522052/Services/Login_service.dart';
import 'package:maryamreda_0522052/Services/Registration_service.dart';

class LoginProvider extends ChangeNotifier
{
  bool isLoading=false;


  Future<void>fetchdataLogin(String emaill,String passwordd)async
  {
    isLoading=true;
    notifyListeners();

    UserModelLogin user=UserModelLogin(email: emaill, password: passwordd,status: true);
    await LoginService.logindata(user,true);



    isLoading=false;
    notifyListeners();
  }
}