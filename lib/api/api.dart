import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:interconnect_mobile_app/api/photo_service.dart';
import 'package:interconnect_mobile_app/entities/person.dart';
import 'package:interconnect_mobile_app/meetups/mock_data.dart';

class Api {
  static String baseUrl = "http://159.203.1.20:8080/v0";


  static Future<http.Response> addUser (
      String email,
      String firstName,
      String lastName,
      String description,
      String uid,
      ) async {

    Map data = {
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'description': description,
      'church': 'crosspoint',
      'dob': '1990-01-01'
    };

    //encode Map to JSON
    var body = json.encode(data);

    var response = await http.post(baseUrl+'/user',
        headers: {
          "Content-Type": "application/json",
          "X-Mock-User": uid
        },
        body: body);

    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }

  static Future<List<Person>> getMatchGroup (String uid) async {
    var churchId = "1234567";

    var response = await http.get(baseUrl + '/user' +
        "/$uid" +
        "/church" +
        "/$churchId" +
        "/matchgroup",
        headers: {
          "Content-Type": "application/json",
          "X-Mock-User": uid
        }
    );

    // TODO: See if backend works
    response = MockData.getMockMatchingData();

    print("${response.statusCode}");
    print("${response.body}");

    List<Person> people;
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      if (data != null) {
        print("parsing "+data.toString());
        var users = data['users'] as List;
        people = users.map((json) => Person.fromJSON(json)).toList();
      }
    }

    if (people!=null) {
      people = await matchPeopleToPhotos(people);
    }

    return people;
  }

  static Future<List<Person>> matchPeopleToPhotos(List<Person> people) async {
    for (Person person in people) {
      person.image = await PhotoService.getPhotoForUser(person.uid);
      print(person.image);
    }
    return people;
  }
}