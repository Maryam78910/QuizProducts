import 'package:flutter/material.dart';
import 'package:maryamreda_0522052/Providers/Login_provider.dart';
import 'package:maryamreda_0522052/Providers/Products_provider.dart';
import 'package:maryamreda_0522052/Providers/Registration_provider.dart';
import 'package:provider/provider.dart';

import 'Screens/Signup_screen.dart';

void main() {
  runApp
    (
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => LoginProvider(),),
          ChangeNotifierProvider(create: (context) =>SignupProvider() ,),
          ChangeNotifierProvider(create: (context) =>ProductsProvider() ,)
               ],
               child: const MyApp()
           ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

