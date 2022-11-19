import 'dart:convert';

import 'package:holiday_aggregator_24/util/log.dart';
import 'package:http/http.dart' as http;

class Api {
  final _apiHost = 'http://localhost:8080/';

  Future<dynamic> get(String path) async {
    try {
      final fullPath = Uri.parse(_apiHost + path);
      final response = await http.get(fullPath);
      debugLog("called GET $path and got response $response");
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
      );
      debugLog("called POST $path with body $body and got response $response");
    } catch (e, s) {
      debugLogError('error in POST request with path $path', e, s);
    }
  }
}
