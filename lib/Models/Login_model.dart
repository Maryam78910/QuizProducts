class UserModelLogin
{

  String email;
  String password;
  bool status;

  UserModelLogin({required this.email,required this.password,required this.status});

  factory UserModelLogin.fromJson(Map<String,dynamic>json)
  {

    return UserModelLogin(
        email: json["email"], password: json["password"],status: json["true"]);


  }
}