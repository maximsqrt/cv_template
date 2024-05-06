import 'package:cv_template/domain/education_entry.dart';
import 'package:cv_template/domain/hobby_entry.dart';
import 'package:cv_template/domain/language_entry.dart';
import 'package:cv_template/domain/personal_data.dart';
import 'package:cv_template/domain/skill_entry.dart';
import 'package:cv_template/domain/work_entry.dart';

final List<dynamic> personEntries = [
  "Education",
  ...edus,
  "Skills",
  ...skills,
  "Languages",
  ...languages,
];

final List<dynamic> workEntries = [
  "Work Experience",
  ...work,
];

final edus = [
EducationEntry(
  fromDate: DateTime(2014, 9),
  toDate: DateTime(2018, 7),
  degree: "Bachelor of Science in Mathematics",
  university: "Albert-Ludwigs-University Freiburg",
),
EducationEntry(
  fromDate: DateTime(2019, 4),
  toDate: DateTime(2021, 9),
  degree: "Master of Science in Mathematics (finished before completion)",
  university: "Albert-Ludwigs-University Freiburg",
)

  // EducationEntry(
  //   fromDate: DateTime(2018, 9),
  //   toDate: DateTime(2020, 7),
  //   degree: "PhD",
  //   university: "University of Berlin",
  // ),
];

final languages = [
  const LanguageEntry(
    name: "English",
    skillLevel: "C1",
    rating: 4,
  ),
  const LanguageEntry(
    name: "German",
    skillLevel: "C2",
    rating: 5,
  ),
  const LanguageEntry(
    name: "French",
    skillLevel: "B1",
    rating: 3,
  ),
];
final hobbys = [
  const HobbyEntry(
    name:'guitar', 
    imagePath: "assets/images/icons/guitar.png",
  ),
    const HobbyEntry(
    name:'paragliding', 
    imagePath: "assets/images/icons/para.png",
  ),
  const HobbyEntry(
    name:'skiing', 
    imagePath: "assets/images/icons/ski.png",
  ),
    const HobbyEntry(
    name:'classic', 
    imagePath: "assets/images/icons/wow.png",
  ),
];

final skills = [
  const SkillEntry(
    name: "Flutter",
    rating: 3,
  ),
  const SkillEntry(
    name: "Dart",
    rating: 3,
  ),
  const SkillEntry(
    name: "Stochastics",
    rating: 5,
  ),
    const SkillEntry(
    name: "C",
    rating: 1,
  ),
      const SkillEntry(
    name: "Python",
    rating: 2,
  ),
      const SkillEntry(
    name: "FL Studio",
    rating: 5,
  ),
      const SkillEntry(
    name: "R",
    rating: 2,
  ),
];

final work = [
  WorkEntry(
    fromDate: DateTime(2017, 10),
    toDate: DateTime(2018, 3),
    jobTitle: "Tutor: Stochastics and Statisics 1",
    company: "Albert-Ludwigs-University Freiburg",
    description:
        "My role involved delivering tailored instruction and reinforcing course materials to enhance student understanding and performance in Stochastics",
  ),
  WorkEntry(
    fromDate: DateTime(2018,4),
    toDate: DateTime(2018, 9),
    jobTitle: "Tutor: Stochastics and Statisics 2",
    company: "Albert-Ludwigs-University Freiburg",
    description: "My role involved delivering tailored instruction and reinforcing course materials to enhance student understanding and performance in Stochastics",
  ),
  WorkEntry(
    fromDate: DateTime(2019, 10),
    toDate: DateTime(2020, 3),
    jobTitle: "Tutor: Mathematics for Students of Computer Science and Engineering",
    company: "Albert-Ludwigs-University Freiburg",
    description:
        "My role involved delivering tailored instruction and reinforcing course materials to enhance student understanding and performance in Stochastics",
  ),
  WorkEntry(
    fromDate: DateTime(2020,4),
    toDate: DateTime(2020, 9),
    jobTitle: "Tutor: Stochastics for Computer Science Students",
    company: "Albert-Ludwigs-University Freiburg",
    description: "My role involved delivering tailored instruction and reinforcing course materials to enhance student understanding and performance in Stochastics",
  ),
 
  WorkEntry(
    fromDate: DateTime(2020, 10),
    toDate: DateTime(2021, 3),
    jobTitle: "Application Developer",
    company: "Loy & Hutz",
    description:
        "Developed CAFM module using the C#-based language Waveware, designed web module app for project management for both web and FAT client",
  ),
  WorkEntry(
    fromDate: DateTime(2021,11),
    toDate: DateTime(2022, 3),
    jobTitle: "IT-Consultant",
    company: "AS Bueropartner",
    description: "Providing IT consulting for a web client's ERP software and assisting mid-sized company executives in database management.",
  ),
  WorkEntry(
    fromDate: DateTime(2023,8),
    toDate: DateTime(2024, 8),
    jobTitle: "Trainee",
    company: "App-Akademie",
    description: "I independently led the development of a cross-platform mobile application for both iOS and Android using Flutter and Dart.",
  ),

  ];

final personalData = PersonalData(
  firstName: "maxim",
  lastName: "sessler",
  email: "maxim@pyroscript.de",
  phone: "+49 151 72 7777",
  dateOfBirth: DateTime(1994, 12, 25),
  address: Address(
    street: "Am Bischofskreuz 5",
    city: "Freiburg",
    zip: "79114",
  ),
  profileDescription:
      "A versatile and dedicated professional with a diverse range of experience in paragliding, software development, mathematics and app development. ",
  maritalStatus: MaritalStatus.single,
  nationality: Nationality.german,
);
