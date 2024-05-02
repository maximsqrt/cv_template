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
    degree: "Bachelor of Science",
    university: "University of Berlin",
  ),
  EducationEntry(
    fromDate: DateTime(2018, 9),
    toDate: DateTime(2020, 7),
    degree: "Master of Science",
    university: "University of Berlin",
  ),
];

final languages = [
  const LanguageEntry(
    name: "English",
    skillLevel: "C2",
    rating: 5,
  ),
  const LanguageEntry(
    name: "German",
    skillLevel: "C2",
    rating: 5,
  ),
  const LanguageEntry(
    name: "Spanish",
    skillLevel: "B2",
    rating: 4,
  ),
];

final skills = [
  const SkillEntry(
    name: "Flart",
    rating: 5,
  ),
  const SkillEntry(
    name: "Putter",
    rating: 5,
  ),
  const SkillEntry(
    name: "Dython",
    rating: 3,
  ),
];

final work = [
  WorkEntry(
    fromDate: DateTime(2014, 9),
    toDate: DateTime(2018, 7),
    jobTitle: "Software Engineer",
    company: "IBM",
    description:
        "Pioneered the development of the company's first-ever space tourism packages, including lunar landings, Martian treks, and zero-gravity experiences.",
  ),
  WorkEntry(
    fromDate: DateTime(2010, 9),
    toDate: DateTime(2014, 7),
    jobTitle: "Working Student",
    company: "App Akademie",
    description:
        "- Developed  and delivered comprehensive curriculum for iOS and Android app development courses, covering languages such as Swift, Kotlin, and Flutter.\n - Mentored over 200 students, providing one-on-one tutoring and code reviews, leading to an average improvement of 40% in student project scores. \n - Created a series of interactive coding workshops to enhance students' understanding of app development concepts and best practices. \n - Collaborated with a team of tutors to design a project-based learning approach, which increased student engagement and practical understanding of app development. \n- Stayed updated with the latest trends and technologies in the app development industry, ensuring the curriculum remains relevant and up-to-date. \n- Organized guest lectures from industry professionals to provide students with real-world insights into the app development industry.",
  ),
  WorkEntry(
      fromDate: DateTime(2005, 2),
      toDate: DateTime(2007, 9),
      jobTitle: "Logistic Driver",
      company: "DHL",
      description:
          "Operated a variety of delivery vehicles, including vans, trucks, and motorcycles, to deliver packages to customers in a timely and efficient manner.")
];

final personalData = PersonalData(
  firstName: "Jan",
  lastName: "Sent",
  email: "sentd94@gmail.com",
  phone: "+49 1575 911 9123",
  dateOfBirth: DateTime(1994, 12, 25),
  address: Address(
    street: "Karl-Marx-Str. 1",
    city: "Berlin",
    zip: "12043",
  ),
  profileDescription:
      "A versatile and dedicated professional with a diverse range of experience in logistics, app development education and app development. ",
  maritalStatus: MaritalStatus.single,
  nationality: Nationality.german,
);
