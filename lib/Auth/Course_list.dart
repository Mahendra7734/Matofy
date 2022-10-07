import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart'as http;

import '../Model/courselist_model.dart';




Future<CourseList> course_list() async {
  final response = await http.post(
      Uri.parse('https://rajabookingonline.com/fundapp/api/course-list'));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    return CourseList.fromJson(data);
  } else {
    return CourseList.fromJson(data);
  }
}


