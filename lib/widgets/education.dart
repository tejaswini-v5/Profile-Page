import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final String name;
  final String degree;
  final String date;

  Education({
    required this.name,
    required this.degree,
    required this.date,
  });


  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 2,
      color: Color.fromARGB(255, 247, 230, 135),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.description, color: Colors.purple, size: 20), // Add the date icon
                          SizedBox(width: 8), // Add spacing between icon and text
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ],
                ),
              SizedBox(height: 5), // Add a vertical space between "name" and "degree"
              Row(
                    children: [
                          SizedBox(width: 29), // Adjust spacing between "name" and "degree"
                          Text(
                            degree,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black, 
                            ),
                          ),
                        ],
                ),
              SizedBox(height: 5), // Add a vertical space between "degree" and "date"
              Row(
                  children: [
                          SizedBox(width: 29), // Adjust spacing between "degree" and "date"
                          Text(
                           date,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                  ),
                SizedBox(height: 16), // Add vertical spacing between education entries
              ],



        ),
      ),
    );
  }
}
