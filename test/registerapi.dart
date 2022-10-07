import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

Future RagistrationApi(
    String username, String mobilenumber, String email, String password) async {
  final http.Response response = await http.post(
    Uri.parse('https://rajabookingonline.com/fundapp/api/register'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': username,
      'mobile': mobilenumber,
      'email': email,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("data" + data.toString());

    if (data['status'] == 1) {
      print(data["message"]);

      Fluttertoast.showToast(
        msg: data["message"],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 12,
      );
      return data;
    }
    else {
      Fluttertoast.showToast(
        msg: data["message"],
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 12,
      );
      return Future.error(data['message']);
    }

  } else {
    return Future.error("Server Error");
  }
}
