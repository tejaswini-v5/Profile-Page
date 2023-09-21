import 'package:flutter/material.dart';

class Skill extends StatelessWidget {
  final String skillName;
  final String logoPath;

  Skill({
    required this.skillName,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 8), // Adjust vertical spacing
    padding: EdgeInsets.all(12), // Add padding to the container
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 247, 197, 223), // Background color
      borderRadius: BorderRadius.circular(16), // Rounded corners
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.3), // Shadow color
          spreadRadius: 2, // Adjust shadow spread
          blurRadius: 4, // Adjust shadow blur
          offset: Offset(0, 2), // Adjust shadow offset
        ),
      ],
    ),
    child: Row(
      children: [
        // Skill logo
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle, // Circular container for logo
            color: Colors.blue, // Logo background color
            border: Border.all(
              color: Colors.blue, // Border color
              width: 2, // Border width
            ),
          ),
          child: Center(
            child: Image.asset(
              logoPath, 
              width: 32, // Adjust the logo size
              height: 32, // Adjust the logo size
            ),
          ),
        ),
        SizedBox(width: 16), // Add horizontal spacing between logo and text
        // Skill name
        Text(
          skillName, // Display the skill name
          style: TextStyle(
            fontSize: 18, // Adjust font size
            color: Colors.black, // Text color
            fontWeight: FontWeight.bold, // Add bold font weight
          ),
        ),
      ],
    ),
  );
}
} 

