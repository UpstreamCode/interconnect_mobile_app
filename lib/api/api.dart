import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  static String baseUrl = "http://159.203.1.20:8080/v0";

  static Future<http.Response> addUser (
      String email,
      String firstName,
      String lastName,
      String description,
      ) async {

    Map data = {
      'email': '12345678901234567890',
      'firstName': '12345678901234567890',
      'lastName': '12345678901234567890',
      'description': '12345678901234567890',
      'church': 'crosspoint',
      'dob': '1990-01-01'
    };

    //encode Map to JSON
    var body = json.encode(data);

    var response = await http.post(baseUrl+'/user',
        headers: {"Content-Type": "application/json"},
        body: body);

    print("${response.statusCode}");
    print("${response.body}");
    return response;
  }
}