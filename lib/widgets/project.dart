import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  final String projectName;
  final String description;
  final String date;

  const Project({super.key, 
    required this.projectName,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {

     return Card(
      elevation: 2,
      color: const Color.fromARGB(255, 167, 227, 227),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              date,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
