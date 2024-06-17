import 'package:cs442_mp1/main.dart';
import 'package:flutter/material.dart';
import 'widgets/education.dart';
import 'widgets/experience.dart';
import 'widgets/project.dart';
import 'widgets/skill.dart';

class LinkedInProfile extends StatelessWidget {
  
  final UserInfo userInfo;
  const LinkedInProfile(this.userInfo, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],

        // Display the app bar
        appBar: AppBar(
          title: const Text('Tejaswini Viswanath'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
             alignment: Alignment.centerLeft,
              children: [

                 // Display the user's profile picture
                Container(
                  margin: const EdgeInsets.all(16),
                  child: Image.asset(
                    userInfo.imagePath, 
                    width: 400,
                    height: 400,
                    fit: BoxFit.cover,
                    ),    
                ), 
              ],
            ),

            // Display the user's name and position
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userInfo.name,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    userInfo.position,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 1),

            // Display the user's contact information and location
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.email, color: Colors.blue), // Add the email icon
                      const SizedBox(width: 8), // Add spacing between icon and text
                      Text('Email: ${userInfo.email}'),
                    ],
                  ),
                  // Location with an icon
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.red), // Add the location icon
                      const SizedBox(width: 8), // Add spacing between icon and text
                      Text('Location: ${userInfo.location}'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 1),
            
            // Display the user's summary information
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.person, color: Colors.green), // Add the summary icon
                        SizedBox(width: 8), // Add spacing between icon and text
                        Text('Summary', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 192, 199, 248), // Set the background color for the summary
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2), // Shadow color
                              spreadRadius: 2, // Adjust shadow spread
                              blurRadius: 2, // Adjust shadow blur
                              offset: const Offset(0, 1), // Adjust shadow offset
                            ),
                          ], // Adjust the radius for a slight curve
                        ),
                       padding: const EdgeInsets.all(10),
                      child: Text( 
                        userInfo.summary,
                        style: const TextStyle(fontSize: 16),
                      ), 
                    ),  
                  ],
              ),
            ),

            // Display the user's education information
            ListTile(
              title: const Row(
                children: [
                  Icon(Icons.school, color: Colors.green), // Add the education icon
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('Education', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                ],
              ),
             // Use a ListView.builder to display multiple education entries
              subtitle: ListView.builder(
                shrinkWrap: true,
                itemCount: userInfo.education.length,
                itemBuilder: (context, index) {
                return Education(
                   name: userInfo.education[index].name,
                   degree: userInfo.education[index].degree,
                   date: userInfo.education[index].date,
                );
                },
              ),
            ),

            // Display the user's experience information
            ListTile(
              title: const Row(
                children: [
                  // Add the experience icon
                  Icon(Icons.work, color: Colors.green),
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('Experience', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                ],
              ),
              // Use a ListView.builder to display multiple experience entries
              subtitle: ListView.builder(
                shrinkWrap: true,
                itemCount: userInfo.experiences.length,
                itemBuilder: (context, index) {
                  return Experience(
                    companyName: userInfo.experiences[index].companyName,
                    periodOfWork: userInfo.experiences[index].periodOfWork,
                    about: userInfo.experiences[index].about,
                    skills: userInfo.experiences[index].skills,
                  );
                },
              ),
            ),

            // Display the user's projects information
            ListTile(
              title: const Row(
                children: [
                  // Add the Project icon
                  Icon(Icons.code, color: Colors.green),
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('Projects', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                  SizedBox(height: 5),
                ],
              ),
              // Use a ListView.builder to display multiple experience entries
              subtitle: ListView.builder(
                shrinkWrap: true,
                itemCount: userInfo.projects.length,
                itemBuilder: (context, index) {
                  return Project(
                    projectName: userInfo.projects[index].projectName,
                    description: userInfo.projects[index].description,
                    date: userInfo.projects[index].date,
                  );
                },
              ),
            ),
          
            // Display the user's skills information
            ListTile(
              title: const Row(
                children: [
                  // Add the skills icon
                  Icon(Icons.star, color: Colors.green),
                  SizedBox(width: 8), // Add spacing between icon and text
                  Text('Skills', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8),
                ],
              ),
              // Use a ListView.builder to display multiple skills entries
              subtitle: ListView.builder(
                shrinkWrap: true,
                itemCount: userInfo.skills.length,
                itemBuilder: (context, index) {
                  return Skill(
                    skillName: userInfo.skills[index].skillName,
                    logoPath: userInfo.skills[index].logoPath,
                  );
                },
              ),
            ),
          ],
          ),
        ),
    ),
  );
  }
}
