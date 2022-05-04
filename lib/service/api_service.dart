import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  Map<String, String> header = {
    HttpHeaders.acceptHeader: 'application/json',
    HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
  };

  Future<Map<String, dynamic>> getRequest() async {
    try {
      final response = await http.get(
        Uri.parse('https://moni-staging-1.vercel.app/api/loans'),
        headers: header,
      );
      final dynamic data = json.decode(response.body);
      if (response.statusCode == 200) {
        return data;
      } else {
        return data;
      }
    } on SocketException {
      return {'message': 'network error'};
    } on Exception catch (e) {
      return {'message': e.toString()};

    }
  }
}
