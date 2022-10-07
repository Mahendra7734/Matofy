import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

Future EnterOtp(String mobilenumber, String otp, String username, String email,) async {
  final http.Response response = await http.post(
    Uri.parse('https://rajabookingonline.com/fundapp/api/verify-user-otp'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'mobile': mobilenumber,
      'otp': otp,
      'username': username,
      'email': email
    }),
  );

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("data"+ data.toString());

    if(data['status']==1)
    {
      print(data['message']);
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
    else{
      return Future.error(data['message']);
    }
  }
  else{

    return Future.error("Server Error");
  }

}
