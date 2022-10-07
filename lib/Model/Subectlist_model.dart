import 'dart:convert';
/// status : 1
/// message : "Success"
/// Data : [{"category_id":"5","name":"SOLVED TEST PAPERS  WITH EXPLANATION ","position":"1","description":"<p>PAPER 2</p>\r\n","amount":"NA","status":"1","image":"edu_subcategory1.jpg","date":"15-09-2021"},{"category_id":"2","name":"RAJASTHAN ECONOMIC SURVEY 2020-2021","position":"2","description":"<p>RAJASTHAN ECONOMIC SURVEY 2020-2021</p>\r\n","amount":"NA","status":"1","image":"edu_subcategory2.jpg","date":"12-09-2021"},{"category_id":"7","name":"RAS PRE 2021  TEST SERIES  (1 - 10)","position":"3","description":"<h2>Test series is available here</h2>\r\n","amount":"NA","status":"1","image":"edu_subcategory3.jpg","date":"12-09-2021"}]
/// url : "https://rajabookingonline.com/fundapp/public/admin/uploads/subcategory"

SubectlistModel subectlistModelFromJson(String str) => SubectlistModel.fromJson(json.decode(str));
String subectlistModelToJson(SubectlistModel data) => json.encode(data.toJson());
class SubectlistModel {
  SubectlistModel({
      num? status, 
      String? message, 
      List<Data>? data, 
      String? url,}){
    _status = status;
    _message = message;
    _data = data;
    _url = url;
}

  SubectlistModel.fromJson(dynamic json) {
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
SubectlistModel copyWith({  num? status,
  String? message,
  List<Data>? data,
  String? url,
}) => SubectlistModel(  status: status ?? _status,
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

/// category_id : "5"
/// name : "SOLVED TEST PAPERS  WITH EXPLANATION "
/// position : "1"
/// description : "<p>PAPER 2</p>\r\n"
/// amount : "NA"
/// status : "1"
/// image : "edu_subcategory1.jpg"
/// date : "15-09-2021"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? categoryId, 
      String? name, 
      String? position, 
      String? description, 
      String? amount, 
      String? status, 
      String? image, 
      String? date,}){
    _categoryId = categoryId;
    _name = name;
    _position = position;
    _description = description;
    _amount = amount;
    _status = status;
    _image = image;
    _date = date;
}

  Data.fromJson(dynamic json) {
    _categoryId = json['category_id'];
    _name = json['name'];
    _position = json['position'];
    _description = json['description'];
    _amount = json['amount'];
    _status = json['status'];
    _image = json['image'];
    _date = json['date'];
  }
  String? _categoryId;
  String? _name;
  String? _position;
  String? _description;
  String? _amount;
  String? _status;
  String? _image;
  String? _date;
Data copyWith({  String? categoryId,
  String? name,
  String? position,
  String? description,
  String? amount,
  String? status,
  String? image,
  String? date,
}) => Data(  categoryId: categoryId ?? _categoryId,
  name: name ?? _name,
  position: position ?? _position,
  description: description ?? _description,
  amount: amount ?? _amount,
  status: status ?? _status,
  image: image ?? _image,
  date: date ?? _date,
);
  String? get categoryId => _categoryId;
  String? get name => _name;
  String? get position => _position;
  String? get description => _description;
  String? get amount => _amount;
  String? get status => _status;
  String? get image => _image;
  String? get date => _date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['category_id'] = _categoryId;
    map['name'] = _name;
    map['position'] = _position;
    map['description'] = _description;
    map['amount'] = _amount;
    map['status'] = _status;
    map['image'] = _image;
    map['date'] = _date;
    return map;
  }

}