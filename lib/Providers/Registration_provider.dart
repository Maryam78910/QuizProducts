import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Models/Registration_model.dart';
import 'package:maryamreda_0522052/Services/Registration_service.dart';


class SignupProvider extends ChangeNotifier
{



  Future<void>fetchdata(String name,String email,String password,String phone)async
  {
    await SignupService.regisetdata(phone, name, email, password);
    notifyListeners();
  }


}