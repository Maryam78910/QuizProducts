class UserModel
{
  bool state;
  
  UserModel({required this.state});
  
  factory UserModel.fromJson(Map<String,dynamic>json)
  {
    return UserModel(state: json['state']);

  }
}