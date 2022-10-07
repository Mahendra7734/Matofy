import 'dart:convert';
import 'package:http/http.dart'as http;

Future chapter_list(String course_id,subject_id) async{
  final http.Response response=await http.post(Uri.parse('https://rajabookingonline.com/fundapp/api/chapter-list'),
      headers: <String,String>{
        'Content-Type':'application/json;charset=UTF-8',
      },
      body: jsonEncode(<String ,String>{
        'course_id':course_id,
        'subject_id':subject_id
      })
  );
  if(response.statusCode==200){
    var data = jsonDecode(response.body);
    print("data"+data.toString());
    if(data["status"]==1){
      print(data["message"]);
      print(response.body);
      return data["Data"];
    }else{
      return Future.error(data["message"]);
    }
  }else{
    return Future.error("Server Error");
  }
}
// Future getData(String mId) async {
//   final http.Response response = await http.post(
//     Uri.parse('http://premad.in/chitfund_api/Api/getMembersDetails'),
//     body: jsonEncode(<String, String>{
//       'member_id': mId.toString()
//     }),
//   );
//
//   if (response.statusCode == 200) {
//     var data = jsonDecode(response.body);
//     print("data" + data.toString());
//
//     if (data['status'] == ) {
//
//
//       return data['data'];
//     }
//     else {
//       return Future.error(data['message']);
//     }
//   } else {
//     return Future.error("Server Error");
//   }
// }