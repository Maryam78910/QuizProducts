import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Providers/Login_provider.dart';
import 'package:maryamreda_0522052/Providers/Registration_provider.dart';
import 'package:maryamreda_0522052/Screens/Products_screen.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  
  final formkey=GlobalKey<FormState>();

  final TextEditingController textemaill=TextEditingController();
  final TextEditingController textpasswordl=TextEditingController();

   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),


      body:Form(
      key: formkey,
      child: Column(


        children: [

          CircleAvatar(
            backgroundColor: Colors.purple,
             maxRadius: 100,
          ),

          Text("Email"),
          TextFormField(
            controller: textemaill,

            validator: (value) {
              if(value==null||value.isEmpty)
              {
                return "Enter your phone number";
              }

            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),


          SizedBox(height: 10,),

          Text("Password"),
          TextFormField(
            controller: textpasswordl,

            validator: (value) {
              if(value==null||value.isEmpty)
              {
                return "Enter your phone number";
              }
              if(value.length<8)
              {
                return "At least 8";

              }
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          Consumer<LoginProvider>(
            builder: (context, value, child) {

            return ElevatedButton(
              onPressed:()async
              {
                if(formkey.currentState!.validate())
                {
                  await value.fetchdataLogin(textemaill.text, textpasswordl.text);

                  if(value.state==true)
                    {

                       Navigator.push(context, MaterialPageRoute(builder: (context) =>ProductsPage() ,));
                    }
                  else
                    {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("the user not found")));

                    }
                }
                else
                {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Invalid Login")));
                }
              },
              child: Text("Login"),
            );
          }),

        ],
      ),
    ),
    );
  }
}
