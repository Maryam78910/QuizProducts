import 'package:flutter/material.dart';

import 'package:maryamreda_0522052/Models/Registration_model.dart';
import 'package:maryamreda_0522052/Services/Login_service.dart';
import 'package:maryamreda_0522052/Services/Registration_service.dart';

class LoginProvider extends ChangeNotifier
{
  bool? state;


  Future<void>fetchdataLogin(String emaill,String passwordd)async
  {

    final regist=await LoginService.logindata(emaill, passwordd);
    regist.state;
    notifyListeners();
  }
}