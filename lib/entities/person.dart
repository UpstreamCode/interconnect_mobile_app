class Person {
  final String firstName;
  final String lastName;
  final String description;
  final String church;
  final String uid;
  String image;

  Person({
    this.firstName,
    this.lastName,
    this.description,
    this.church,
    this.uid,
    this.image,
  });

  factory Person.fromJSON(Map<String, dynamic> json) {
    return Person(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      image: "",
      description: json['description'] as String,
      church: json['church'] as String,
      uid: json['uid'] as String,
    );
  }
}

class Contact {
  final String label;
  final String contactDetails;

  const Contact({this.label, this.contactDetails});

  factory Contact.fromJSON(Map<String, dynamic> json) {
    return Contact(
      label: json['label'] as String,
      contactDetails: json['contactDetails'] as String
    );
  }
}