import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class PersonSnifferApi {
  static const _baseUrl = "http://10.122.20.133:52413/PersonInfo?name=Rasmus";
  static var _headers = {
    "Content-Type": "application/json",
    "Accept": "application/json"
  };

  static Future<String> getNames() async {
    try {
      final response = await http.get(_baseUrl);
      
      var test = json.decode(response.body);

      return response.body;
    } catch (e) {
      print(e);
    }
  }
}