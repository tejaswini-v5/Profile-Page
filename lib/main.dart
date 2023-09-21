import 'package:cs442_mp1/linked_in_profile.dart';
import 'package:flutter/material.dart';
class UserInfo {
  final String name;
  final String position;
  //final String company;
  final String imagePath;
  final String email;
  final String location;
  final String summary;
  final List<EducationInfo> education;
  final List<ExperienceInfo> experiences;
  final List<ProjectInfo> projects;
  

  UserInfo({
    required this.name,
    required this.position,
    //required this.company,
    required this.imagePath,
    required this.email,
    required this.location,
    required this.summary,
    required this.education,
    required this.experiences,
    required this.projects,
  });
}

class EducationInfo {
  final String name;
  final String degree;
  final String date;
  //final String logoPath;

  EducationInfo({
    required this.name,
    required this.degree,
    required this.date,
    //required this.logoPath,
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

class ProjectInfo {
  final String projectName;
  final String description;
  final String date;
  //final List<String> skills;
  

  ProjectInfo({
    required this.projectName,
    required this.description,
    required this.date,
    //required this.skills,
  });
}

void main() {
  // Create a User object with dummy data
  UserInfo userInfo = UserInfo(
    name: 'Tejaswini Viswanath',
    position: 'Graduate Student at Illinois Institute of Techology | Ex-Software Engineer at ServiceNow',
    //company: 'Graduate Student at Illinois Institute of Techology',
    imagePath: 'assets/images/ProfessionalHeadShot.jpeg',
    email: 'tejaswini@gmail.com',
    location: 'Chicago, Illinois, United States',
    summary: 'I am a graduate student at Illinois Institute of Technology. I am currently pursuing my Masters in Computer Science. I have 2 years of experience as a Software Engineer at ServiceNow. I am passionate about learning new technologies and I am looking for a full-time opportunity as a Software Engineer.',
    education: [
      EducationInfo(
      name: 'Illinois Institute of Techology',
      degree: 'Masters in Computer Science',
      date: 'Aug 2021 - Present',
      //logoPath: 'assets/images/ProfessionalHeadShot.jpeg',
      ),
      EducationInfo(
        name: 'Keshav Memorial Institute of Technology',
        degree: 'Bachelors in Computer Science',
        date: 'Aug 2017 - May 2021',
        //logoPath: 'assets/images/ProfessionalHeadShot.jpeg',
      ),
    ],
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
    projects: [
      ProjectInfo(
          projectName: 'Flutter Chat App',
          description: 'Developed a real-time chat application using Flutter and Firebase.',
          date: 'June 2022 - August 2022',
        ),
        ProjectInfo(
          projectName: 'E-commerce Website',
          description: 'Designed and implemented a responsive e-commerce website using React and Redux.',
          date: 'January 2022 - April 2022',
        ),
        ProjectInfo(
          projectName: 'Machine Learning Research',
          description: 'Conducted research on natural language processing and published a paper.',
          date: 'September 2021 - December 2021',
        ),
    ]
  );
  // Run the app

  //  runApp(
  //   LinkedInProfile(userInfo),
  //   LinkedInProfile(userInfo), // Use ProfilePage as the home widget
  // );
  runApp(MyApp(userInfo));
}

// class UserInfoPage extends StatelessWidget {
//   final UserInfo userInfo;


class MyApp extends StatelessWidget {
  final UserInfo user;

  const MyApp(this.user);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LinkedInProfile(user),
    );
  }
}
