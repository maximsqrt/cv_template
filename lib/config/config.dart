import 'package:cv_template/domain/education_entry.dart';
import 'package:cv_template/domain/language_entry.dart';
import 'package:cv_template/domain/personal_data.dart';
import 'package:cv_template/domain/skill_entry.dart';

final List<dynamic> personEntries = [
  "Education",
  ...edus,
  "Skills",
  ...skills,
  "Languages",
  ...languages,
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

final personalData = PersonalData(
  firstName: "David",
  lastName: "Sent",
  email: "sentd94@gmail.com",
  phone: "+49 1575 911 9123",
  dateOfBirth: DateTime(1994, 12, 25),
  address: Address(
    street: "Karl-Marx-Str. 1",
    city: "Berlin",
    zip: "12043",
  ),
  maritalStatus: MaritalStatus.single,
  nationality: Nationality.german,
);
