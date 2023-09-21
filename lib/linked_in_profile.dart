import 'package:cs442_mp1/main.dart';
import 'package:flutter/material.dart';

import 'widgets/experience.dart';
import 'widgets/education.dart';
import 'widgets/project.dart';

//import 'package:cs442_mp1/widgets/experience.dart';

class LinkedInProfile extends StatelessWidget {
  
  final UserInfo userInfo;
  const LinkedInProfile(this.userInfo);

  //const LinkedInProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          title: const Text('Tejaswini Viswanath'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the user's profile picture
            Container(
              margin: const EdgeInsets.all(16),
              child: Image.asset(
                userInfo.imagePath, 
                width: 418,
                height: 418,
                fit: BoxFit.cover,
                ),              
            ),

            // Display the user's name, position, and company
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userInfo.name,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    userInfo.position,
                    style: const TextStyle(fontSize: 16),
                  ),
                  // Text(
                  //   userInfo.company,
                  //   style: const TextStyle(fontSize: 16),
                  // ),
                ],
              ),
            ),

            // Display the user's contact information
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email: ${userInfo.email}'),
                  Text('location: ${userInfo.location}'),
                ],
              ),
            ),

            // Display the user's summary information
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                    userInfo.summary,
                    style: const TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),

            // Display the user's education
            ListTile(
              title: Text('Education'),
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

            ListTile(
              title: Text('Experience'),
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

            ListTile(
              title: Text('Project'),
              // Use a ListView.builder to display multiple experience entries
              subtitle: ListView.builder(
                shrinkWrap: true,
                itemCount: userInfo.projects.length,
                itemBuilder: (context, index) {
                  return Project(
                    projectName: userInfo.projects[index].projectName,
                    description: userInfo.projects[index].description,
                    date: userInfo.projects[index].date,
                    //skills: userInfo.projects[index].skills,
                  );
                },
              ),
            ),
            
            // Container(
            //   margin: const EdgeInsets.all(16),
            //   child: Card(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         const Text('Education'),
            //         ListTile(
            //           title: (text: ('Dummy')),
            //           leading: Image.asset(userInfo.education.logoPath),
            //           title: Text(userInfo.education.name),
            //           subtitle: Text(userInfo.education.degree),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // ListTile(
            //   title: Text('Experience'),
            //   // Use a ListView.builder to display multiple experience entries
            //   subtitle: ListView.builder(
            //     shrinkWrap: true,
            //     itemCount: userInfo.education.length,
            //     itemBuilder: (context, index) {
            //       Experience(
            //         companyName: userInfo.experience[index].companyName,
            //         periodOfWork: userInfo.experience[index].periodOfWork,
            //         about: userInfo.experience[index].about,
            //         skills: userInfo.experience[index].skills,
            //       );
            //     },
            //   ),
            // ),
            // Display the user's experience
            // Container(
            //   height: 200, // Set a fixed height for the inner ListView
            //   child: ListView.builder(
            //     itemCount: experiences.length,
            //     itemBuilder: (context, index) {
            //     return Experience(experience: experiences[index]);
            //     },
            //     shrinkWrap: true,
            //   ),
            //),
          ],
        ),
      ),
    ),
    );
  }

}
