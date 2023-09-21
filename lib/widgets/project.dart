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

     return Card(
      elevation: 2,
      color: Color.fromARGB(255, 167, 227, 227),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8),
            Text(
              date,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
