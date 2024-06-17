import 'package:flutter/material.dart';

class Experience extends StatelessWidget {
  final String companyName;
  final String periodOfWork;
  final String about;
  final List<String> skills;

  const Experience({super.key, 
    required this.companyName,
    required this.periodOfWork,
    required this.about,
    required this.skills,
  });
 
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 161, 79),
      margin: const EdgeInsets.all(8),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              companyName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Duration: $periodOfWork',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'About:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              about,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Skills:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
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