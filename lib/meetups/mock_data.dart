import 'package:http/http.dart' as http;

class MockData {

  static http.Response getMockMatchingData() {
    String body = '{'+
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"created\": \"2020-04-04\",' +
    '\"users\": [' +
    '{' +
    '\"email\": \"user@example.com\",' +
    '\"firstName\": \"Susie\",' +
    '\"lastName\": \"R.\",' +
    '\"description\": \"My name\'s Susie!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\"' +
    '}' +
    ']' +
    '},' +
    '{' +
    '\"email\": \"taylor@example.com\",' +
    '\"firstName\": \"Taylor\",' +
    '\"lastName\": \"C.\",' +
    '\"description\": \"My name\'s Taylor!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\"' +
    '}' +
    ']' +
    '},' +
    '{' +
    '\"email\": \"jeff@example.com\",' +
    '\"firstName\": \"Jeff\",' +
    '\"lastName\": \"P.\",' +
    '\"description\": \"My name\'s Jeff!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\"' +
    '}' +
    ']' +
    '},' +
    '{' +
    '\"email\": \"abdul@example.com\",' +
    '\"firstName\": \"Abdul\",' +
    '\"lastName\": \"M.\",' +
    '\"description\": \"My name\'s Abdul!\",' +
    '\"church\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"contact\": [' +
    '{' +
    '\"label\": \"string\",' +
    '\"contactDetails\": \"string\",' +
    '\"user\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\",' +
    '\"uuid\": \"3fa85f64-5717-4562-b3fc-2c963f66afa6\"' +
    '}' +
    ']' +
    '}' +
    ']' +
    '}';

    return new http.Response(body, 200);
    }
}