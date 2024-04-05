enum MaritalStatus { single, married, divorced, widowed }

enum Nationality { german }

class Address {
  Address({
    required this.street,
    required this.city,
    required this.zip,
  });

  final String street;
  final String city;
  final String zip;
}

class PersonalData {
  const PersonalData({
    required this.first,
    required this.last,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
    required this.address,
    required this.maritalStatus,
    required this.nationality,
  });

  final String first;
  final String last;
  final String email;
  final String phone;
  final DateTime dateOfBirth;
  final Address address;
  final MaritalStatus maritalStatus;
  final Nationality nationality;

  @override
  String toString() {
    return """
    PersonalData(
      first: "$first",
      last: "$last",
      email: "$email",
      phone: "$phone",
      dateOfBirth: DateTime(${dateOfBirth.year}, ${dateOfBirth.month}, ${dateOfBirth.day}),
      address: Address(
        street: "${address.street}",
        city: "${address.city}",
        zip: "${address.zip}",
      ),
      maritalSTatus: MaritalStatus.${maritalStatus.name},
      nationality: Nationality.${nationality.name},
    );
""";
  }
}
