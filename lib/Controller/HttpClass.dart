import 'dart:convert';

import 'package:corona_19/Model/Total_status_model.dart';
import 'package:http/http.dart' as http;

class Httpcontroller {
  static Future<WorldRecordsModel?> getWolrdsStates() async {
    var response =
        await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));

    var data = json.decode(response.body);
    print(data);
    if (response.statusCode == 200) {
      print(data);
      return WorldRecordsModel.fromJson(data);
    }
  }
}
