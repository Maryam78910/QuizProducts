import 'package:flutter/material.dart';

class itemdetales extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  const itemdetales({
    super.key,
    required this.name,
    required this.image,
    required this.description,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(name),
        Text(image),
          Text(description),

        ],
      ),


    );
  }
}
