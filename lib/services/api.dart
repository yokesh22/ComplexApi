import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:interndemo/models/model.dart';

class Getapi{

List<Model> expo = [];

   Future apicall() async{
    http.Response response = await http.get(Uri.parse('https://api.bottomstreet.com/forex/technical?forex_name=USDINR'));
    final result = json.decode(response.body);
    // The15Min welcome = The15Min.fromJson(result);
    return result;
  }
}