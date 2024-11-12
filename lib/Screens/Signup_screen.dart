import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Providers/Registration_provider.dart';
import 'package:maryamreda_0522052/Screens/Login_screen.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {

  final formkey=GlobalKey<FormState>();
  final TextEditingController textname=TextEditingController();
  final TextEditingController textemail=TextEditingController();
  final TextEditingController textpassword=TextEditingController();
  final TextEditingController textphone=TextEditingController();

   SignupPage({super.key});

  @override
  Widget build(BuildContext context) {

    final Registerpro=Provider.of<SignupProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),

      body:Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text("Usename"),
           TextFormField(
             controller: textname,

             validator: (value) {
               if(value==null||value.isEmpty)
                 {
                   return "Enter your Name";
                 }
             },
             decoration: InputDecoration(
                 border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15),
             ),
             ),
           ),

           SizedBox(height: 10,),

           Text("Phone"),
           TextFormField(
             controller: textphone,

             validator: (value) {
               if(value==null||value.isEmpty)
               {
                 return "Enter your phone number";
               }
                if(value.length<11)
               {
                 return "Must be 11 integer";

               }
             },
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(15),
               ),
             ),
           ),

           SizedBox(height: 10,),

           Text("Email"),
           TextFormField(
             controller: textemail,

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
             controller: textpassword,

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

           ElevatedButton(
               onPressed:()
             {
               if(formkey.currentState!.validate())
                 {
                   Registerpro.fetchdata(
                       textname.text, textemail.text, textpassword.text, textphone.text);

                   ScaffoldMessenger.of(context)
                       .showSnackBar(SnackBar(content: Text("Sign up succsess")));

                   Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage() ,));
                 }
               else
                 {
                   ScaffoldMessenger.of(context)
                   .showSnackBar(SnackBar(content: Text(" Sign up Failed")));
                 }
             },
               child: Text("Sign up"),
           ),

           Row(
             children: [
               Text("Have already an account"),
               TextButton(
                   onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder:(context) => LoginPage(),));
                   },
                   child: Text("Login"))
             ],
           )

         ],
        ),
      ),

    );
  }
}
