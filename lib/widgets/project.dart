import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  final String projectName;
  final String description;
  final String date;

  Project({
    required this.projectName,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(projectName),
      subtitle: Text('$description ($date)'),
    );
  }
}
