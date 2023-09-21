import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  final String companyName;
  final String periodOfWork;
  final String about;
  final List<String> skills;

  Experience({
    required this.companyName,
    required this.periodOfWork,
    required this.about,
    required this.skills,
  });
 
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              companyName,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Period of Work: ${periodOfWork}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'About:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              about,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Skills:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Wrap(
              spacing: 8,
              children: skills.map((skill) {
                return Chip(
                  label: Text(skill),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}