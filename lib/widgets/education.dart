import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final String name;
  final String degree;
  final String date;
  //final String logoPath;

  Education({
    required this.name,
    required this.degree,
    required this.date,
   // required this.logoPath,
  });


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text('$degree ($date)'),
    );
  }
}
