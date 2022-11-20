import 'dart:convert';

import 'package:holiday_aggregator_24/util/log.dart';
import 'package:http/http.dart' as http;

class Api {
  final _apiHost = 'http://127.0.0.1:5000/';

  Map<String, String> get headers => {
        "Accept": "application/json",
        "Content-type": "application/json",
      };

  Future<dynamic> get(String path) async {
    try {
      final fullPath = Uri.parse(_apiHost + path);
      final response = await http.get(fullPath, headers: headers);
      debugLog("called GET $path");
      return json.decode(response.body);
    } catch (e, s) {
      debugLogError('error in GET request with path $path', e, s);
    }
  }

  Future<dynamic> post({
    required String path,
    required Map<String, dynamic> body,
  }) async {
    try {
      final fullPath = Uri.parse(_apiHost + path);
      final response = await http.post(
        fullPath,
        body: json.encode(body),
        headers: headers,
      );
      debugLog("called POST $path with body $body");
      return json.decode(response.body);
    } catch (e, s) {
      debugLogError('error in POST request with path $path', e, s);
    }
  }
}
