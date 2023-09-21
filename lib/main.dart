//import 'package:cs442_mp1/linkedin_profile.dart';
//import 'package:cs442_mp1/linkedin_profile.dart';
import 'package:flutter/material.dart';
import 'linkedIn_profile.dart';
//import Experiences from 'linkedIn_profile.dart';

class UserInfo {
  final String name;
  final String position;
  final String company;
  final String imagePath;
  final String email;
  final String location;
  final List<EducationInfo> education;
  final List<ExperienceInfo> experiences;

  UserInfo({
    required this.name,
    required this.position,
    required this.company,
    required this.imagePath,
    required this.email,
    required this.location,
    required this.education,
    required this.experiences
  });
}

class EducationInfo {
  final String name;
  final String degree;
  final String logoPath;

  EducationInfo({
    required this.name,
    required this.degree,
    required this.logoPath,
  });
}

class ExperienceInfo {
  final String companyName;
  final String periodOfWork;
  final String about;
  final List<String> skills;
  

  ExperienceInfo({
    required this.companyName,
    required this.periodOfWork,
    required this.about,
    required this.skills,
  });
}




void main() {
  // Create a User object with dummy data
  UserInfo user = UserInfo(
    name: 'Tejaswini Viswanath',
    position: 'Graduate Student at Illinois Institute of Techology | Ex-Software Engineer at ServiceNow',
    company: 'Graduate Student at Illinois Institute of Techology',
    imagePath: 'assets/images/ProfessionalHeadShot.jpeg',
    email: 'tejaswini@gmail.com',
    location: 'Chicago, Illinois, United States',
    education: [
      EducationInfo(
      name: 'Illinois Institute of Techology',
      degree: 'Masters in Computer Science',
      logoPath: 'assets/images/ProfessionalHeadShot.jpeg',
    )],
    experiences: [
      ExperienceInfo(
        companyName: 'ServiceNow',
        periodOfWork: 'July 2019 - July 2021',
        about: 'Worked as a Software Engineer in the ITSM team',
        skills:  ['Flutter', 'Dart', 'Mobile App Development'],
      ),
      ExperienceInfo(
        companyName: 'Company B',
        periodOfWork: 'Mar 2018 - Nov 2019',
        about: 'Web Developer',
        skills: ['HTML', 'CSS', 'JavaScript'],
      ),
    ],
  );
  // Run the app
  runApp(MyApp(user: user));
}


class MyApp extends StatelessWidget {
  final User user;

  MyApp({required this.user});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LinkedInProfile(user: user),
    );
  }
}
