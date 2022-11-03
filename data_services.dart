import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:travel_blog/models/data_model.dart';

class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api";
  Future<List<DataModel>> getInfo() async {
    var apiUrl = '/getPlaces';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        // ignore: avoid_print
        print(list);
        return list.map((ctx) => DataModel.fromJson(ctx)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return <DataModel>[];
    }
  }
}
