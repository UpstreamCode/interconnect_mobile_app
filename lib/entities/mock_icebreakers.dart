import 'package:http/http.dart' as http;

class MockData {

  static http.Response getMockMatchingData() {
    String body = '{'+
    '\"category\": \"Just for Fun\",' +
    '\"questions\": [' +
    '\"\",' +
    '\"\",' +
    '\"\",' +
    '\"\",' +
    '\"\",' +
    ']' +
    '},' ;

    return new http.Response(body, 200);
    }
}