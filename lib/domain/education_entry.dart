class EducationEntry {
  const EducationEntry({
    required this.fromDate,
    required this.toDate,
    required this.degree,
    required this.university,
  });

  final DateTime fromDate;
  final DateTime toDate;
  final String degree;
  final String university;
}
