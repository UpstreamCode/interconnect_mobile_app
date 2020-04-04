import 'package:http/http.dart' as http;

class MockData {

  static http.Response getMockMatchingData() {
    String body = '{'+
    '\"uid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"created\": \"2020-04-04\",' +
    '\"users\": [' +
    '{' +
    '\"email\": \"sam@example.com\",' +
    '\"firstName\": \"Sam\",' +
    '\"lastName\": \"G.\",' +
    '\"description\": \"My name\'s Sam!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"sam1234\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"sam1234\"' +
    '}' +
    ']' +
    '},' +
    '{' +
    '\"email\": \"merri@example.com\",' +
    '\"firstName\": \"Merri\",' +
    '\"lastName\": \"B.\",' +
    '\"description\": \"My name\'s Merri!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"merri1234\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"merri1234\"' +
    '}' +
    ']' +
    '},' +
    '{' +
    '\"email\": \"peregrin@example.com\",' +
    '\"firstName\": \"Peregrin\",' +
    '\"lastName\": \"T.\",' +
    '\"description\": \"My name\'s Peregrin!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"peregrin1234\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"peregrin1234\"' +
    '}' +
    ']' +
    '},' +
    '{' +
    '\"email\": \"frodo@example.com\",' +
    '\"firstName\": \"Frodo\",' +
    '\"lastName\": \"B.\",' +
    '\"description\": \"My name\'s Frodo!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"frodo1234\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uid\": \"frodo1234\"' +
    '}' +
    ']' +
    '}' +
    ']' +
    '}';

    return new http.Response(body, 200);
    }
}