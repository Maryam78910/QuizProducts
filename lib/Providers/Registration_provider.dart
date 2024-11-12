import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Models/Registration_model.dart';
import 'package:maryamreda_0522052/Services/Registration_service.dart';


class SignupProvider extends ChangeNotifier
{
  bool isLoading=false;


  Future<void>fetchdata(String name,String email,String password,String phone)async
  {
    isLoading=true;
    notifyListeners();

    UserModelSignip user=UserModelSignip(email: email, name: name, password: password, phone: phone);
    await SignupService.regisetdata(user);

    isLoading=false;
    notifyListeners();
  }


}