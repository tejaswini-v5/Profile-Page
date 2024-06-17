import 'package:flutter/material.dart';

class Education extends StatelessWidget {
  final String name;
  final String degree;
  final String date;

  const Education({super.key, 
    required this.name,
    required this.degree,
    required this.date,
  });


  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 2,
      color: const Color.fromARGB(255, 247, 230, 135),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
              Row(
                children: [
                  const Icon(Icons.description, color: Colors.purple, size: 20), // Add the date icon
                          const SizedBox(width: 8), // Add spacing between icon and text
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ],
                ),
              const SizedBox(height: 5), // Add a vertical space between "name" and "degree"
              Row(
                    children: [
                          const SizedBox(width: 29), // Adjust spacing between "name" and "degree"
                          Text(
                            degree,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black, 
                            ),
                          ),
                        ],
                ),
              const SizedBox(height: 5), // Add a vertical space between "degree" and "date"
              Row(
                  children: [
                          const SizedBox(width: 29), // Adjust spacing between "degree" and "date"
                          Text(
                           date,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                  ),
                const SizedBox(height: 16), // Add vertical spacing between education entries
              ],



        ),
      ),
    );
  }
}
