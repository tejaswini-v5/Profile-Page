//import 'package:cs442_mp1/main.dart';
import 'package:cs442_mp1/main.dart';
import 'package:flutter/material.dart';

class LinkedInProfile extends StatelessWidget {
  //const LinkedInProfile({super.key, required this.user});
  final UserInfo user;
  //const LinkedInProfile({super.key, required this.user});
  LinkedInUserProfile({required this.user});

  //const LinkedInProfile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          
          title: const Text('LinkedIn Profile'),
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
        body: ListView(
          children: [
            // Display the user's profile picture
            Container(
              margin: const EdgeInsets.all(16),
              child: Image.asset(user.imagePath),
            ),

            // Display the user's name, position, and company
            Container(
              margin: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    user.name,
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    user.position,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    user.company,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            // Display the user's contact information
            Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Email: ${user.email}'),
                  Text('location: ${user.location}'),
                ],
              ),
            ),

            // Display the user's education
            Container(
              margin: const EdgeInsets.all(16),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Education'),
                    ListTile(
                      leading: Image.asset(user.education.logoPath),
                      title: Text(user.education.name),
                      subtitle: Text(user.education.degree),
                    ),
                  ],
                ),
              ),
            ),

            // // Display the user's experience
            // Container(
            //   height: 200, // Set a fixed height for the inner ListView
            //   child: ListView.builder(
            //     itemCount: experiences.length,
            //     itemBuilder: (context, index) {
            //     return Experience(experience: experiences[index]);
            //     },
            //     shrinkWrap: true,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

