class UserModelSignip
{
  String name;
  String phone;
  String email;
  String password;
  
  UserModelSignip({required this.email,required this.name,required this.password,required this.phone});
  
  factory UserModelSignip.fromJson(Map<String,dynamic>json)
  {
    return UserModelSignip(
        email: json["email"], name: json["name"], password: json["password"], phone: json["phone"]);

  }
}