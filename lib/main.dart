import 'package:cs442_mp1/linked_in_profile.dart';
import 'package:flutter/material.dart';
class UserInfo {
  final String name;
  final String position;
  final String imagePath;
  final String email;
  final String location;
  final String summary;
  final List<EducationInfo> education;
  final List<ExperienceInfo> experiences;
  final List<ProjectInfo> projects;
  final List<SkillInfo> skills;
  

  UserInfo({
    required this.name,
    required this.position,
    required this.imagePath,
    required this.email,
    required this.location,
    required this.summary,
    required this.education,
    required this.experiences,
    required this.projects,
    required this.skills,
  });
}

class EducationInfo {
  final String name;
  final String degree;
  final String date;

  EducationInfo({
    required this.name,
    required this.degree,
    required this.date,

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
  

  ProjectInfo({
    required this.projectName,
    required this.description,
    required this.date,
  });
}

class SkillInfo {
  final String skillName;
  final String logoPath;

  SkillInfo({
    required this.skillName,
    required this.logoPath,
  });
}

void main() {
  // User information
  UserInfo userInfo = UserInfo(
    name: 'Tejaswini Viswanath',
    position: 'Graduate Student at Illinois Institute of Techology | Ex-Software Engineer at ServiceNow',
    imagePath: 'assets/images/TejaswiniToonHeadShot.jpeg',
    email: 'tviswanath@hawk.iit.edu',
    location: 'Chicago, Illinois, United States',
    summary: 'I am a graduate student at Illinois Institute of Technology. I am currently pursuing my Masters in Computer Science. I have 2 years of experience as a Software Engineer at ServiceNow. I am passionate about learning new technologies and I am looking for a full-time opportunity as a Software Engineer.',
    education: [
      EducationInfo(
      name: 'Illinois Institute of Techology',
      degree: 'Masters in Computer Science',
      date: 'Aug 2023 - Present',
      ),
      EducationInfo(
        name: 'Keshav Memorial Institute of Technology',
        degree: 'Bachelors in Computer Science',
        date: 'Aug 2017 - May 2021',
      ),
    ],
    experiences: [
      ExperienceInfo(
        companyName: 'ServiceNow',
        periodOfWork: 'Dec 2021- July 2023',
        about: 'Worked as a Software Engineer in the SPM team',
        skills:  ['JavaScript', 'Java', 'AngularJS', 'ReactJS', 'Flutter', 'Dart', 'Mobile App Development'],
      ),
      ExperienceInfo(
        companyName: 'KMIT',
        periodOfWork: 'Mar 2021 - Nov 2021',
        about: 'Web Developer Intern',
        skills: ['HTML', 'CSS', 'JavaScript', 'Java', 'NodeJS', 'Machine Learning'],
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
    ],
    skills: [
      SkillInfo(
        skillName: 'Flutter', 
        logoPath: 'assets/images/flutter_logo.png'
      ),
      SkillInfo(
        skillName: 'Dart', 
        logoPath: 'assets/images/dart_logo.png'
      ),
      SkillInfo(
        skillName: 'JavaScript', 
        logoPath: 'assets/images/js_logo.png'
      ),
    ]
  );
  runApp(MyApp(userInfo));
}

class MyApp extends StatelessWidget {
  final UserInfo user;

  const MyApp(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LinkedInProfile(user),
    );
  }
}
