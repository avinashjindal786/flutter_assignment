import 'dart:io';

import 'package:flutter_assignment/model/moviedata.dart';
import 'package:flutter_assignment/model/httpmodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class APIHelper {

  static Future<HttpModel<List<Autogenerated>>> getPosts() async {
    var url = Uri.parse('http://www.omdbapi.com/?i=tt3896198&apikey=b89b3f9a');
    var response = await http.get(url);
    List<Autogenerated> posts = [];
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print(body);
      Autogenerated post = Autogenerated.fromJson(body);
      posts.add(post);
    }
    return HttpModel<List<Autogenerated>>(
      isSuccessful: true,
      data: posts,
      mess: 'Request Successful',
      respo: response.statusCode,
    );
  }
}

