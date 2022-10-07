import 'dart:io';
import 'package:get/get.dart';

class ApiProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  String _url = 'https://rajabookingonline.com/fundapp/api/';
  Future<dynamic> getRequest(
      {required apiUrl, data = const <String, String>{}}) async {
    httpClient.baseUrl = _url;
    var res =
        await get(apiUrl, query: data, headers: {'Accept': 'application/json'});
    if (res.statusCode == 200) {
      return res.body;
    } else if (res.unauthorized) {
      return Future.error(res.body);
    } else if (res.statusCode == 404) {
      return Future.error(res.body);
    } else if (res.statusCode == 500) {
      return Future.error(res.body);
    } else {
      return Future.error('Network Problem');
    }
  }

  Future<dynamic> postRequest(
      {required apiUrl, data = const <String, String>{}}) async {
    httpClient.baseUrl = _url;
    var res = await post(apiUrl, data, headers: {'Accept': 'application/json'});

    print(res);
    print('1111111');
    print(res.statusCode);

    if (res.statusCode == 200) {
      return res.body;
    } else if (res.unauthorized) {
      return Future.error(res.body);
    } else if (res.statusCode == 404) {
      return Future.error(res.body);
    } else if (res.statusCode == 405) {
      return Future.error(res.body);
    } else if (res.statusCode == 500) {
      return Future.error(res.body);
    } else if (res.statusCode == 429) {
      return Future.error(res.body);
    } else if (res.statusCode == 426) {
      return Future.error(res.body);
    } else {
      return Future.error('Network Problem');
    }
  }

  Future<dynamic> UpdateProfile({data}) async {
    httpClient.baseUrl = _url;
    File file1 = new File(data['profileImage']!);
    // File file2 = new File(data['adhar_image_front']!);
    // File file3 = new File(data['adhar_image_back']!);
    Map<String, dynamic> formData = Map<String, dynamic>.from(data);
    formData.addAll({
      'profileImage': MultipartFile(file1, filename: data['profileImage']),
      // 'adhar_image_front':
      // MultipartFile(file2, filename: data['adhar_image_front']),
      // 'adhar_image_back':
      // MultipartFile(file3, filename: data['adhar_image_back']),

      'username': data['username'],
      'mobile': data['mobile'],
      'email': data['email'],
      'user_id': data['user_id'],
    });
    final form = FormData(formData);

    var res = await post('update-profile-user', form,
        headers: {'Accept': 'application/json'});
    print("First");
    print(res);
    print("Last");
    if (res.statusCode == 200) {
      return res.body;
    } else if (res.unauthorized) {
      return Future.error(res.body);
    } else if (res.statusCode == 404) {
      return Future.error(res.body);
    } else if (res.statusCode == 500) {
      return Future.error(res.body);
    } else if (res.statusCode == 402) {
      return Future.error(res.body);
    } else {
      return Future.error('Network Problem');
    }
  }
}
