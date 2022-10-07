import 'package:get_storage/get_storage.dart';


var box=GetStorage();

id(){
  return box.read('id')??'';
}

amount() {
  return box.read('amount')??'';
}

dropDownValue(){
  return box.read('_dropDownValue')??'';
}
dropDownValue1(){
  return box.read('_dropDownValue1')??'';
}
Patientname(){
  return box.read('Patientname')??'';
}
PatientAge(){
  return box.read('PatientAge')??'';
}
Patientrelation(){
  return box.read('Patientrelation')??'';
}
hospitalname(){
  return box.read('hospitalname')??'';
}
medicalcondition(){
  return box.read('medicalcondition')??'';
}
city(){
  return box.read('city')??'';
}
