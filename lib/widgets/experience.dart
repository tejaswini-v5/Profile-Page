// import 'package:flutter/material.dart';

// class ExperienceInfo {
//   final String companyName;
//   final String periodOfWork;
//   final String about;
//   final List<String> skills;

//   ExperienceInfo({
//     required this.companyName,
//     required this.periodOfWork,
//     required this.about,
//     required this.skills,
//   });
// }

// class Experience extends StatelessWidget {
//   final ExperienceInfo experience;

//   Experience({required this.experience});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       margin: EdgeInsets.all(8),
//       child: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               experience.companyName,
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Period of Work: ${experience.periodOfWork}',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'About:',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               experience.about,
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Skills:',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Wrap(
//               spacing: 8,
//               children: experience.skills.map((skill) {
//                 return Chip(
//                   label: Text(skill),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Work Experiences'),
//         ),
//         body: ListView.builder(
//           itemCount: experiences.length,
//           itemBuilder: (context, index) {
//             return Experience(experience: experiences[index]);
//           },
//         ),
//       ),
//     );
//   }
// }
