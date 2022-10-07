import 'dart:io';
import 'package:Motofy/Screens/Raisefund_list.dart';
import 'package:flutter/material.dart';
import '../Api_provider.dart';
import '../Auth/RaiseFund_list.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import '../Storage/storage.dart';
import '../Utils/DefaultButton.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';

class Fundraiser2 extends StatefulWidget {
  const Fundraiser2({Key? key}) : super(key: key);

  @override
  State<Fundraiser2> createState() => _Fundraiser2State();
}

class _Fundraiser2State extends State<Fundraiser2> {
  var h;
  var w;
  bool value = false;
  var Data = [];

  File ? image;
  var name;

  //final _picker = ImagePicker();
  bool showSpinner = false;

  Future getImage() async {
    final result = await FilePicker.platform.pickFiles();
    if(result == null) return;
    final image1 = result.files.first;

    // image=file as File?;
    name= image1.name ;

  }

  Future<void> uploadImage() async {
    setState(() {
      showSpinner = true;
    });

    var stream = new http.ByteStream(image!.openRead());
    stream.cast();

    var length = await image!.length();

    var uri = Uri.parse('https://fakestoreapi.com/products');

    var request = new http.MultipartRequest('POST', uri);

    request.fields['title'] = "Static title";

    var multiport = new http.MultipartFile('image', stream, length);

    request.files.add(multiport);

    var response = await request.send();

    print(response.stream.toString());
    if (response.statusCode == 200) {
      setState(() {
        showSpinner = false;
      });
      print('image uploaded');
    } else {
      print('failed');
      setState(() {
        showSpinner = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: LIGHT_COLOR,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: SizedBox(
                  height: h * 0.90,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            "Tell the story about why you are running a fundraiser",
                            style: TextStyle(
                                color: BLACK_COLOR,
                                fontSize: textSizeXLarge,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.add_business_rounded,
                                        color: BLACK_GREYCOLOR,
                                        size: 19,
                                      ),
                                      Icon(Icons.add_circle,
                                          color: BLACK_GREYCOLOR, size: 19),
                                      Icon(Icons.account_box_sharp,
                                          color: BLACK_GREYCOLOR, size: 19),
                                      Icon(
                                          Icons.account_balance_wallet_outlined,
                                          color: BLACK_GREYCOLOR,
                                          size: 19),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.add_business_rounded,
                                          color: BLACK_GREYCOLOR, size: 19),
                                      Icon(Icons.add_circle,
                                          color: BLACK_GREYCOLOR, size: 19),
                                      Icon(
                                          Icons.account_balance_wallet_outlined,
                                          color: BLACK_GREYCOLOR,
                                          size: 19),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "The Platinum Chip Credit Card is baked in security, such that there’s an additional layer to protect your card from being counterfeited and duplicated With  level of security every transaction becomes safer and life becomes easier.The Platinum Chip Credit Card is baked in security, such that there’s an additional layer to protect your card from being counterfeited and duplicated. With this level of security every transaction becomes safer and life becomes easier. "),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Row(
                                  children: [
                                    Text("Add Medical Documents"),
                                    SizedBox(
                                      width: w * 0.02,
                                    ),
                                    CircleAvatar(
                                      radius: 10,
                                      backgroundColor: GREEN_COLOR,
                                      child: Icon(
                                        Icons.question_mark,
                                        size: 18,
                                        color: WHITE_COLOR,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                  name==null?Padding(
                          padding: const EdgeInsets.only(left: 15, top: 20),
                          child: SizedBox(
                            height: h * 0.09,
                            width: w * 0.2,
                            child: DottedBorder(
                              color: Colors.black,
                              strokeWidth: 1,
                              strokeCap: StrokeCap.butt,
                              borderType: BorderType.Rect,
                              child: Container(
                                  alignment: Alignment.center,
                                  child: IconButton(
                                      onPressed: () {
                                        getImage();
                                        uploadImage();
                                      },
                                      icon: Icon(
                                        Icons.photo,
                                        size: 30,
                                        color: BLACK_GREYCOLOR,
                                      ))
                              ),
                            ),
                          ),
                        ):Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: SizedBox(
                      height: h * 0.09,
                      width: w * 0.5,
                      child: DottedBorder(
                        color: Colors.black,
                        strokeWidth: 1,
                        strokeCap: StrokeCap.butt,
                        borderType: BorderType.Rect,
                        child: Container(
                            alignment: Alignment.center,
                            child:Text(name)
                        ),
                      ),
                    ),
                  ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: value,
                                  side: BorderSide(color: GREEN_COLOR),
                                  // checkColor: GREEN_COLOR,
                                  activeColor: GREEN_COLOR,
                                  onChanged: (val) {
                                    setState(() {
                                      value = val!;
                                    });
                                  }),
                              Text("I agree to Demo's Terms & Condition")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 50),
                          child: DefaultButton(
                              width: w * 1,
                              height: h * 0.06,
                              color: LIGHT_COLOR,
                              text: "Submit",
                              press: () {
                                Raise_fund();
                              },
                              textcolor: WHITE_COLOR),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Raise_fund() async {
    print(id());
    print(dropDownValue());
    print(amount());
    print(Patientrelation());
    print(Patientname());
    print(PatientAge());
    print(medicalcondition());
    print(dropDownValue1());
    print(hospitalname());

    try {
      var data1 = {
        'user_id': id(),
        'purpose': dropDownValue(),
        'raise_amount': amount(),
        'relation': Patientrelation(),
        'about': 'by contact number',
        'patient_name': Patientname(),
        'age': PatientAge(),
        'medical_condition': medicalcondition(),
        'hospital_status': dropDownValue1(),
        'hospital_name': hospitalname(),
        'city': city()
      };
      var res =
          await ApiProvider().postRequest(apiUrl: 'raise-fund', data: data1);
      print(res);
      if (res['status'].toString() == '1') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Raisefund_list()));
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }



  /// upload file
  /// file: in dart:html package not in dart:io package
  // void _uploadFile(File file) async {
  //   FormData data = FormData.fromMap({
  //     'file': MultipartFile.fromBytes(
  //       filename: file.name, // -----------------------------> problem line
  //       List<>
  //     )
  //   });
  //   Dio dio = new Dio();
  //   dio.post('upload file url', data: data, onSendProgress: (count, total) {
  //     print('$count ==> $total');
  //   }).then((value) {
  //     print('$value');
  //   }).catchError((error) => print('$error'));
  // }


}
