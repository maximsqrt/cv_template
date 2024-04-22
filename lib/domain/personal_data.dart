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

  @override
  String toString() {
    return "$street, $city, $zip";
  }
}

class PersonalData {
  const PersonalData({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
    required this.address,
    required this.profileDescription,
    required this.maritalStatus,
    required this.nationality,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final DateTime dateOfBirth;
  final Address address;
  final String profileDescription;
  final MaritalStatus maritalStatus;
  final Nationality nationality;

  @override
  String toString() {
    return """
    PersonalData(
      first: "$firstName",
      last: "$lastName",
      email: "$email",
      phone: "$phone",
      dateOfBirth: DateTime(${dateOfBirth.year}, ${dateOfBirth.month}, ${dateOfBirth.day}),
      address: Address(
        street: "${address.street}",
        city: "${address.city}",
        zip: "${address.zip}",
      ),
      profileDescription: "$profileDescription"
      maritalStatus: MaritalStatus.${maritalStatus.name},
      nationality: Nationality.${nationality.name},
    );
""";
  }
}
