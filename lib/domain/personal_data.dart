enum MartialStatus { single, married, divorced, widowed }

enum Nationality { german }

class Address {
  final String street;
  final String city;
  final String zip;
  Address({
    required this.street,
    required this.city,
    required this.zip,
  });
}

class PersonalData {
  final String first;
  final String last;
  final String email;
  final String phone;
  final DateTime dateOfBirth;
  final Address address;
  final MartialStatus martialStatus;
  final Nationality nationality;
  const PersonalData({
    required this.first,
    required this.last,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
    required this.address,
    required this.martialStatus,
    required this.nationality,
  });

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
      martialStatus: MartialStatus.${martialStatus.name},
      nationality: Nationality.${nationality.name},
    );
""";
  }
}
