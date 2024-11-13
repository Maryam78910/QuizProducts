import 'package:flutter/material.dart';

class DetailesPage extends StatelessWidget {

  final String image;
  final String name;
  final String description;

   DetailesPage(
      {super.key,

        required this.name,
        required this.image,
        required this.description,
      }
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("welcome"),
      ),
      body: Card(
      child: Column(
         children: [
        Text(image),

       SizedBox(height: 20,),
         Text(name),
       SizedBox(height: 20,),
        Text(description),
    ],
      ),
      ),
    );
  }
}
