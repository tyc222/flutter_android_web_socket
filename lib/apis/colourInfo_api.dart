import 'dart:convert';

import 'package:flutter_android_web_socket/models/ColourInfo_model.dart';
import 'package:http/http.dart' as http;

class ColourInfoApi {
  static final ColourInfoApi _colourInfodApi = ColourInfoApi._internal();

  factory ColourInfoApi() {
    return _colourInfodApi;
  }

  ColourInfoApi._internal();

  Future<ColourInfoModel> fetchColourInfo() async {
    String url = "https://www.colourlovers.com/api/patterns/random?format=json";
    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      return ColourInfoModel.fromJson(jsonData[0]);
    } else {
      throw Exception('Failed to colour info');
    }
  }
}
