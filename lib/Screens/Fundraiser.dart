import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import '../Storage/storage.dart';
import '../Utils/DefaultButton.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'Fundraiser1.dart';

class Fundraiser extends StatefulWidget {
  const Fundraiser({Key? key}) : super(key: key);

  @override
  State<Fundraiser> createState() => _FundraiserState();
}

class _FundraiserState extends State<Fundraiser> {
  TextEditingController _amount = new TextEditingController();

  var h;
  var w;

  var data;

  var baseurl;
  String? _dropDownValue;
  String? _dropDownValue1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Raise_fund();
  }

  File? image;

  final _picker = ImagePicker();
  bool showSpinner = false;

  Future getImage() async {
    final pickedFile =
        await _picker.pickImage(source: ImageSource.gallery, imageQuality: 100);

    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    } else {
      print('no image selected');
    }
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
        body: Container(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: SizedBox(
                height: h * 0.90,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "Tell us more about your fundraiser",
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontSize: textSizeXLarge,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 15, right: 15),
                                child: Text(
                                  "Raising funds for Medical Treatment purpose",
                                  style: TextStyle(
                                      color: BLACK_COLOR,
                                      fontSize: textSizeLargeMedium),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Change Purpose?',
                                      style: TextStyle(
                                        // decoration: TextDecoration.underline,
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                        color: GREEN_COLOR,
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.01,
                                    ),
                                    SizedBox(
                                        height: h * 0.05,
                                        width: w * 0.05,
                                        child: Image.asset(
                                            'assets/Icons/plus(1).png'))
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10, top: 20),
                                child: Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    height: 57,
                                    child: TextFormField(
                                      controller: _amount,
                                      cursorColor: BLACK_GREYCOLOR,
                                      decoration: InputDecoration(
                                        hintText: "Enter raise amount",
                                        hintStyle: TextStyle(
                                            fontSize: 16,
                                            color: BLACK_GREYCOLOR),
                                        focusedBorder: OutlineInputBorder(
                                            // borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        suffixIcon: Icon(
                                          Icons.add_business,
                                          color: WHITE_COLOR,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.currency_rupee,
                                          color: BLACK_COLOR,
                                        ),
                                      ),
                                      keyboardType: TextInputType.number,
                                      autofocus: false,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: DropdownButton(
                                      underline:
                                          Container(color: Colors.transparent),
                                      // underline: UnderlineInputBorder(),
                                      hint: _dropDownValue == null
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text('Purpose'),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                _dropDownValue!,
                                                style: TextStyle(
                                                    color: BLACK_COLOR),
                                              ),
                                            ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      style: TextStyle(color: BLACK_COLOR),
                                      items: ['NGO'].map(
                                        (val) {
                                          return DropdownMenuItem<String>(
                                            value: val,
                                            child: Text(val),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (value) {
                                        setState(
                                          () {
                                            _dropDownValue = value as String?;
                                          },
                                        );
                                      },
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: DropdownButton(
                                      underline:
                                          Container(color: Colors.transparent),
                                      // underline: UnderlineInputBorder(),
                                      hint: _dropDownValue1 == null
                                          ? Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text('hospital_status'),
                                            )
                                          : Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                _dropDownValue1!,
                                                style: TextStyle(
                                                    color: BLACK_COLOR),
                                              ),
                                            ),
                                      isExpanded: true,
                                      iconSize: 30.0,
                                      style: TextStyle(color: BLACK_COLOR),
                                      items: ['admitted'].map(
                                        (val) {
                                          return DropdownMenuItem<String>(
                                            value: val,
                                            child: Text(val),
                                          );
                                        },
                                      ).toList(),
                                      onChanged: (value) {
                                        setState(
                                          () {
                                            _dropDownValue1 = value as String?;
                                          },
                                        );
                                      },
                                    )),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
                              //   child: SizedBox(
                              //     height: h*0.07,
                              //     child: Card(
                              //       elevation: 5,
                              //       shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(10)
                              //       ),
                              //       child: Padding(
                              //         padding: const EdgeInsets.only(left: 8,right: 8),
                              //         child: Row(
                              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //           children: [
                              //             Text(data.toString()),
                              //             Icon(Icons.question_mark,color: Colors.red,)
                              //           ],
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.only(left: 20,top: 10,right: 15),
                              //   child: Text("Should be minimum 200",style: TextStyle(fontSize: textSizeSmall,color: BLACK_GREYCOLOR),),
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                              //   child: Card(
                              //     elevation: 5,
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(10)
                              //     ),
                              //     child: ExpansionTile(
                              //         onExpansionChanged: (b) {
                              //           setState(() {
                              //             _isExpanded = !_isExpanded;
                              //           });
                              //         },
                              //         title: Text(
                              //           "This patient is my...",
                              //           style: TextStyle(fontSize: textSizeSMedium),
                              //         ),
                              //
                              //         trailing: Icon(_isExpanded
                              //             ? Icons.arrow_drop_down
                              //             : Icons.arrow_drop_up,color: BLACK_COLOR,size: 35,),
                              //     ),
                              //   ),
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                              //   child: Card(
                              //     elevation: 5,
                              //     shape: RoundedRectangleBorder(
                              //         borderRadius: BorderRadius.circular(10)
                              //     ),
                              //     child: ExpansionTile(
                              //       onExpansionChanged: (b) {
                              //         setState(() {
                              //           _isExpanded = !_isExpanded;
                              //         });
                              //       },
                              //       title: Text(
                              //         "How did you first hear about demo?",
                              //         style: TextStyle(fontSize: textSizeSMedium),
                              //       ),
                              //
                              //       trailing: Icon(_isExpanded
                              //           ? Icons.arrow_drop_down
                              //           : Icons.arrow_drop_up,color: BLACK_COLOR,size: 35,),
                              //     ),
                              //   ),
                              // ),
                              //Text("Upload Image"),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                       // getImage();
                                      },
                                      child: SizedBox(
                                        height:h*0.077,
                                        child: Card(
                                          elevation: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: image == null
                                                ? Center(
                                                    child: SizedBox(
                                                        width: w * 0.5,
                                                        child: Text(
                                                            "Add fundraiser image / video (Optional)")))
                                                : Container(
                                                    child: Center(
                                                      child: Image.file(
                                                        File(image!.path)
                                                            .absolute,
                                                        //height: 200,
                                                        width: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                        height: h * 0.065,
                                        child: OutlinedButton(
                                          onPressed: () {
                                            getImage();
                                            uploadImage();
                                            image == null
                                                ? ""
                                                : Fluttertoast.showToast(
                                                    msg:
                                                        'Image Upload Successfully',
                                                    toastLength:
                                                        Toast.LENGTH_SHORT,
                                                    gravity:
                                                        ToastGravity.BOTTOM,
                                                    timeInSecForIosWeb: 1,
                                                    backgroundColor:
                                                        BLACK_COLOR,
                                                    textColor: WHITE_COLOR,
                                                    fontSize: 12);
                                          },
                                          child: Text(
                                            'Upload',
                                            style:
                                                TextStyle(color: LIGHT_COLOR),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9),
                                              ),
                                              side: BorderSide(
                                                  color: LIGHT_COLOR)),
                                        ))
                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 15, right: 15),
                                child: Text(
                                  "You can easily make change to your fundraiser at any time",
                                  style: TextStyle(
                                      fontSize: textSizeSmall,
                                      color: BLACK_GREYCOLOR,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: h * 0.035),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: BLUE_GREYCOLOR),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Demo's zero platform fee policy will ensure more funds for you.",
                                style: TextStyle(
                                    fontSize: textSizeSmall,
                                    color: BLACK_COLOR,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: DefaultButton(
                            width: w * 1,
                            height: h * 0.06,
                            color: LIGHT_COLOR,
                            text: "Save and continue",
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
          ),
        ),
      ),
    );
  }

  Raise_fund() async {
    var Amount = _amount.text;

    if (Amount.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please Enter amount",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,
          fontSize: 12);
    } else if (_dropDownValue == null) {
      Fluttertoast.showToast(
          msg: 'Select your purpose',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,
          fontSize: 12);
    } else if (_dropDownValue1 == null) {
      Fluttertoast.showToast(
          msg: 'Select your hospital status',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,
          fontSize: 12);
    } else {
      box.write('amount', Amount);
      box.write('_dropDownValue', _dropDownValue);
      box.write('_dropDownValue1', _dropDownValue1);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Fundraiser1(
                    user_id: '62',
                  )));

      print(_dropDownValue);
      print(_dropDownValue1);
    }
  }
}
