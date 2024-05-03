import 'package:cv_template/domain/education_entry.dart';
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
    degree: "Bachelor of Science Mathmatics",
    university: "Albert-Ludwigs-University Freiburg",
  ),
  EducationEntry(
    fromDate: DateTime(2018, 9),
    toDate: DateTime(2020, 7),
    degree: "Master of Science",
    university: "University of Berlin",
  ),
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

final skills = [
  const SkillEntry(
    name: "Flutter",
    rating: 4,
  ),
  const SkillEntry(
    name: "Dart",
    rating: 4,
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
    fromDate: DateTime(2018,3),
    toDate: DateTime(2018, 9),
    jobTitle: "Tutor: Stochastics and Statisics 2",
    company: "Albert-Ludwigs-University Freiburg",
    description: "My role involved delivering tailored instruction and reinforcing course materials to enhance student understanding and performance in Stochastics",
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
      "A versatile and dedicated professional with a diverse range of experience in paragliding, app development education and app development. ",
  maritalStatus: MaritalStatus.single,
  nationality: Nationality.german,
);
