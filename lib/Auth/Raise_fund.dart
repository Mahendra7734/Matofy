import 'dart:convert';
import 'package:http/http.dart' as http;

Future raise_fund(String user_id,relation,patient_name,age,hospital_name,purpose,raise_amount,about,medical_condition,hospital_status,city) async{
  final http.Response response=await http.post(Uri.parse('https://rajabookingonline.com/fundapp/api/raise-fund'),
      headers: <String,String>{
        'Content-Type':'application/json;charset=UTF-8',
      },
      body: jsonEncode(<String ,String>{
        'user_id':user_id,
        'purpose':purpose,
        'raise_amount':raise_amount,
        'relation':relation,
        'about':about,
        'patient_name':patient_name,
        'age':age,
        'medical_condition':medical_condition,
        'hospital_status':hospital_status,
        'hospital_name':hospital_name,
        'city':city,






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



// Future raise_fund(String user_id,purpose,raise_amount,relation,about,patient_name,age,medical_condition,hospital_status,hospital_name,city) async{
//   final http.Response response=await http.post(Uri.parse('https://rajabookingonline.com/fundapp/api/raise-fund'),
//       headers: <String,String>{
//         'Content-Type':'application/json;charset=UTF-8',
//       },
//       body: jsonEncode(<String ,String>{
//         'user_id':user_id,
//         'purpose':purpose,
//         'raise_amount':raise_amount,
//         'relation':relation,
//         'about':about,
//         'patient_name':patient_name,
//         'age':age,
//         'medical_condition':medical_condition,
//         'hospital_status':hospital_status,
//         'hospital_name':hospital_name,
//         'city':city,
//
//
//
//
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