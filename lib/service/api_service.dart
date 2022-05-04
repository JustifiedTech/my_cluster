import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  Map<String, String> header = {
    HttpHeaders.acceptHeader: 'application/json',
    HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8'
  };

  Future<String> getRequest<T>({T Function(dynamic res)? transform}) async {
    transform ??= (dynamic res) => res.body as T;
    String message = '';
    try {
      final response = await http.get(
        Uri.parse('https://moni-staging-1.vercel.app/api/loans'),
        headers: header,
      );
      final dynamic data = json.decode(response.body);
      if (response.statusCode == 200) {
        transform(data);
        message = data['message'];
      } else {
        message = (data['message'] ?? 'Error encountered').toString();
      }
    } on SocketException {
      message = 'network error';
    } on Exception catch (e) {
      message = e.toString();
    }
    return message;
  }
}
