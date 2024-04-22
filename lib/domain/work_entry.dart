class WorkEntry {
  const WorkEntry({
    required this.fromDate,
    required this.toDate,
    required this.jobTitle,
    required this.company,
    required this.description,
  });

  final DateTime fromDate;
  final DateTime toDate;
  final String jobTitle;
  final String company;
  final String description;
}
