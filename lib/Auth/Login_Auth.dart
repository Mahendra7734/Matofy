import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:get_storage/get_storage.dart';

import '../COLORS/COLORS.dart';

Future login1(String mobilenumber, String password) async {
  var box = GetStorage();

  final http.Response response = await http.post(
      Uri.parse('https://rajabookingonline.com/fundapp/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'mobile': mobilenumber,
        'password': password,
      }));
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    //print("data"+data.toString());
    if (data['status'] == 1) {
      // print(data["message"]);
      // print(response.body);

      // var name=data['username'];
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   content: Text("Login Succesfully"),
      // ));
      //print(data["id"]);
      box.write('id', data["id"]);
      //box.write('name', name);
      Fluttertoast.showToast(
          msg: data["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,
          fontSize: 12);
      print("Success");
      return data;
    } else {
      Fluttertoast.showToast(
          msg: data["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,
          fontSize: 12);
      print("failure");
      return Future.error(data['message']);
    }
  } else {
    return Future.error("Server Error");
  }
}
