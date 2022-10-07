// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// Future UpDateProfile(String user_id,username,mobile,email,) async{
//   final http.Response response=await http.post(Uri.parse('https://rajabookingonline.com/fundapp/api/update-profile-user'),
//       headers: <String,String>{
//         'Content-Type':'application/json;charset=UTF-8',
//       },
//       body: jsonEncode(<String ,String>{
//         'user_id':user_id,
//         'username':username,
//         'mobile':mobile,
//         'email':email,
//         //'profileImage':profileImage,
//
//
//       })
//   );
//   if(response.statusCode==200){
//     var data = jsonDecode(response.body);
//
//     print("data"+data.toString());
//     if(data["status"]==1){
//       print(data["message"]);
//       print(response.body);
//       return data["Data"];
//     }else{
//       return Future.error(data["message"]);
//     }
//   }else{
//     return Future.error("Server Error");
//   }
// }
//
