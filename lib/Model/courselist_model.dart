import 'dart:convert';
/// status : 1
/// message : "Success"
/// Data : [{"name":"RAS PRE 7 DAYS  BOOSTER PACKAGE ","details":"NA","amount":"NA","status":"1","image":"edu_category2.jpg","date":"10-09-2022"},{"name":"Weekly Current Affairs ","details":"NA","amount":"NA","status":"1","image":"edu_categorie3.png","date":"10-09-2022"},{"name":"SCHOOL LECTURER 2021","details":"NA","amount":"NA","status":"1","image":"edu_categorie1.jpg","date":"10-09-2022"}]
/// url : "https://rajabookingonline.com/fundapp/public/admin/uploads/categorie"

CourseList courseListFromJson(String str) => CourseList.fromJson(json.decode(str));
String courseListToJson(CourseList data) => json.encode(data.toJson());
class CourseList {
  CourseList({
      num? status, 
      String? message, 
      List<Data>? data, 
      String? url,}){
    _status = status;
    _message = message;
    _data = data;
    _url = url;
}

  CourseList.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['Data'] != null) {
      _data = [];
      json['Data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _url = json['url'];
  }
  num? _status;
  String? _message;
  List<Data>? _data;
  String? _url;
CourseList copyWith({  num? status,
  String? message,
  List<Data>? data,
  String? url,
}) => CourseList(  status: status ?? _status,
  message: message ?? _message,
  data: data ?? _data,
  url: url ?? _url,
);
  num? get status => _status;
  String? get message => _message;
  List<Data>? get data => _data;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['Data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['url'] = _url;
    return map;
  }

}

/// name : "RAS PRE 7 DAYS  BOOSTER PACKAGE "
/// details : "NA"
/// amount : "NA"
/// status : "1"
/// image : "edu_category2.jpg"
/// date : "10-09-2022"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? name, 
      String? details, 
      String? amount, 
      String? status, 
      String? image, 
      String? date,}){
    _name = name;
    _details = details;
    _amount = amount;
    _status = status;
    _image = image;
    _date = date;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _details = json['details'];
    _amount = json['amount'];
    _status = json['status'];
    _image = json['image'];
    _date = json['date'];
  }
  String? _name;
  String? _details;
  String? _amount;
  String? _status;
  String? _image;
  String? _date;
Data copyWith({  String? name,
  String? details,
  String? amount,
  String? status,
  String? image,
  String? date,
}) => Data(  name: name ?? _name,
  details: details ?? _details,
  amount: amount ?? _amount,
  status: status ?? _status,
  image: image ?? _image,
  date: date ?? _date,
);
  String? get name => _name;
  String? get details => _details;
  String? get amount => _amount;
  String? get status => _status;
  String? get image => _image;
  String? get date => _date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['details'] = _details;
    map['amount'] = _amount;
    map['status'] = _status;
    map['image'] = _image;
    map['date'] = _date;
    return map;
  }

}