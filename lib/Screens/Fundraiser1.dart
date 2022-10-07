import 'package:flutter/material.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import '../Storage/storage.dart';
import '../Utils/DefaultButton.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';

import 'Fundraiser2.dart';

class Fundraiser1 extends StatefulWidget {
  String user_id;
   Fundraiser1({Key? key,required this.user_id}) : super(key: key);

  @override
  State<Fundraiser1> createState() => _Fundraiser1State();
}

class _Fundraiser1State extends State<Fundraiser1> {
  var h;
  var w;
  final _formKey = GlobalKey<FormState>();
  TextEditingController Patientname_controller=new TextEditingController();
  TextEditingController PatientAge_controller=new TextEditingController();
  TextEditingController Patientrelation_controller=new TextEditingController();
  TextEditingController hospitalname_controller=new TextEditingController();
  TextEditingController medicalcondition_controller=new TextEditingController();
  TextEditingController city_controller=new TextEditingController();



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
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text("Tell us about the patient",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeXLarge,fontWeight: FontWeight.bold),),
                        ),
                        Form(
                          key:_formKey ,
                          child: Column(
                            children: [
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
                                       controller: Patientname_controller,
                                      cursorColor: BLACK_GREYCOLOR,
                                      decoration: InputDecoration(
                                        hintText: "Patient name",
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: BLACK_GREYCOLOR),
                                        focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        suffixIcon: Icon(
                                          Icons.person,
                                          color: WHITE_COLOR,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: BLACK_COLOR,
                                        ),
                                      ),
                                      autofocus: false,
                                    ),
                                  ),
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
                                      textAlign: TextAlign.start,

                                       controller: PatientAge_controller,
                                      cursorColor: BLACK_GREYCOLOR,
                                      decoration: InputDecoration(
                                        hintText: "Age",
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: BLACK_GREYCOLOR,height: 0.5),
                                        focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        suffixIcon: Icon(
                                          Icons.add_business,
                                          color: WHITE_COLOR,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.date_range_outlined,
                                          color: BLACK_COLOR,
                                        ),
                                      ),
                                     keyboardType: TextInputType.number,
                                      autofocus: false,
                                      maxLength: 2,
                                    ),
                                  ),
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
                                       controller: Patientrelation_controller,
                                      cursorColor: BLACK_GREYCOLOR,
                                      decoration: InputDecoration(
                                        hintText: "Patient relation",
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: BLACK_GREYCOLOR),
                                        focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        suffixIcon: Icon(
                                          Icons.add_business,
                                          color: WHITE_COLOR,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: BLACK_COLOR,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Patient relation";
                                        } else {}
                                        return null;
                                      },
                                      autofocus: false,
                                    ),
                                  ),
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
                                       controller: hospitalname_controller,
                                      cursorColor: BLACK_GREYCOLOR,
                                      decoration: InputDecoration(
                                        hintText: "Enter hospital name",
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: BLACK_GREYCOLOR),
                                        focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        // suffixIcon: Icon(
                                        //   Icons.add_business,
                                        //   color: WHITE_COLOR,
                                        // ),
                                        prefixIcon: Icon(
                                          Icons.local_hospital,
                                          color: BLACK_COLOR,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Patient relation";
                                        } else {}
                                        return null;
                                      },
                                      autofocus: false,
                                    ),
                                  ),
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
                                      controller: medicalcondition_controller,
                                      cursorColor: BLACK_GREYCOLOR,
                                      decoration: InputDecoration(
                                        hintText: "Enter medical condition",
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: BLACK_GREYCOLOR),
                                        focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        // suffixIcon: Icon(
                                        //   Icons.add_business,
                                        //   color: WHITE_COLOR,
                                        // ),
                                        prefixIcon: Icon(
                                          Icons.local_hospital,
                                          color: BLACK_COLOR,
                                        ),
                                      ),

                                      autofocus: false,
                                    ),
                                  ),
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
                                      controller: city_controller,
                                      cursorColor: BLACK_GREYCOLOR,
                                      decoration: InputDecoration(
                                        hintText: "Enter your city",
                                        hintStyle: TextStyle(
                                            fontSize: 16, color: BLACK_GREYCOLOR),
                                        focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            borderSide: BorderSide.none),
                                        // suffixIcon: Icon(
                                        //   Icons.add_business,
                                        //   color: WHITE_COLOR,
                                        // ),
                                        prefixIcon: Icon(
                                          Icons.location_city_sharp,
                                          color: BLACK_COLOR,
                                        ),
                                      ),
                                      autofocus: false,
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),

                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 15,right: 15,top: 25),
                        //       child: SizedBox(
                        //         height: h*0.07,
                        //         child: Card(
                        //           elevation: 5,
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.circular(10)
                        //           ),
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(left: 8,right: 8),
                        //             child: Row(
                        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //               children: [
                        //                 Text("Patient's full name"),
                        //                 Icon(Icons.question_mark,color: Colors.red,)
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 20,top: 10,right: 15),
                        //       child: Text("Name as mentioned in Patient's Aadhar card",style: TextStyle(fontSize: textSizeSmall,color: BLACK_GREYCOLOR),),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
                        //       child: Card(
                        //         elevation: 5,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(10)
                        //         ),
                        //         child: ExpansionTile(
                        //           onExpansionChanged: (b) {
                        //             setState(() {
                        //               _isExpanded = !_isExpanded;
                        //             });
                        //           },
                        //           title: Text(
                        //             "Patient's Age",
                        //             style: TextStyle(fontSize: textSizeSMedium),
                        //           ),
                        //
                        //           trailing: Icon(_isExpanded
                        //               ? Icons.arrow_drop_down
                        //               : Icons.arrow_drop_up,color: BLACK_COLOR,size: 35,),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 15,right: 15,top: 25),
                        //       child: SizedBox(
                        //         height: h*0.07,
                        //         child: Card(
                        //           elevation: 5,
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.circular(10)
                        //           ),
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(left: 8,right: 8),
                        //             child: Row(
                        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //               children: [
                        //                 Text("Ailment  / medical condition"),
                        //                 Icon(Icons.search,color: GREEN_COLOR,)
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //
                        //     Padding(
                        //       padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
                        //       child: Card(
                        //         elevation: 5,
                        //         shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.circular(10)
                        //         ),
                        //         child: ExpansionTile(
                        //           onExpansionChanged: (b) {
                        //             setState(() {
                        //               _isExpanded = !_isExpanded;
                        //             });
                        //           },
                        //           title: Text(
                        //             "Hospitalisation status",
                        //             style: TextStyle(fontSize: textSizeSMedium),
                        //           ),
                        //
                        //           trailing: Icon(_isExpanded
                        //               ? Icons.arrow_drop_down
                        //               : Icons.arrow_drop_up,color: BLACK_COLOR,size: 35,),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 15,right: 15,top: 25),
                        //       child: SizedBox(
                        //         height: h*0.07,
                        //         child: Card(
                        //           elevation: 5,
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.circular(10)
                        //           ),
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(left: 8,right: 8),
                        //             child: Row(
                        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //               children: [
                        //                 Text("Hospital"),
                        //                 Icon(Icons.search,color: GREEN_COLOR,)
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //
                        //     Padding(
                        //       padding: const EdgeInsets.only(left: 15,right: 15,top: 25),
                        //       child: SizedBox(
                        //         height: h*0.07,
                        //         child: Card(
                        //           elevation: 5,
                        //           shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.circular(10)
                        //           ),
                        //           child: Padding(
                        //             padding: const EdgeInsets.only(left: 8,right: 8),
                        //             child: Row(
                        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //               children: [
                        //                 Text("Enter your city"),
                        //                 Icon(Icons.location_city,color: BLACK_COLOR,)
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //
                        //   ],
                        // ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
                          child: DefaultButton(width: w*1, height: h*0.06, color: LIGHT_COLOR, text: "Save and continue", press: (){
                            Raise_fund1();
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Fundraiser2()));
                           //    raise_fund(widget.user_id.toString(), Patientrelation_controller.text.toString(), Patientname_controller.text.toString(), PatientAge_controller.text.toString(), hospitalname_controller.text.toString(), Purpose_controller.text.toString(), RaiseAmount_controller.text.toString(), about_controller.text.toString(), medicalcondition_controller.text.toString(), hospitastatus_controller.text.toString(), city_controller.text.toString()) .then((value) {
                           //    Navigator.push(context, MaterialPageRoute(builder: (context)=>Raisefund_list()));
                           //
                           //  }).catchError((e){
                           //    print(e.toString());
                           // });
                          }, textcolor: WHITE_COLOR),
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


  Raise_fund1() async {

    var Patientname=Patientname_controller.text;
    var PatientAge=PatientAge_controller.text;
    var Patientrelation=Patientrelation_controller.text;
    var hospitalname=hospitalname_controller.text;
    var medicalcondition=medicalcondition_controller.text;
    var city=city_controller.text;


    if(Patientname.isEmpty){
      Fluttertoast.showToast(msg: "Please Enter Patient name",
          toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,fontSize: 12
      );
    }
    else if(PatientAge.isEmpty){
      Fluttertoast.showToast(msg: "Please Enter Patient Age",
          toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,fontSize: 12
      );
    }
    else if(Patientrelation.isEmpty){
      Fluttertoast.showToast(msg: "Please Enter Patient relation",
          toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,fontSize: 12
      );
    }
    else if(hospitalname.isEmpty){
      Fluttertoast.showToast(msg: "Please Enter hospital name",
          toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,backgroundColor: BLACK_COLOR,
          textColor: WHITE_COLOR,fontSize: 12
      );
    }
    else if(medicalcondition.isEmpty){
    Fluttertoast.showToast(msg: "Please Enter medical condition",
    toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,backgroundColor: BLACK_COLOR,
    textColor: WHITE_COLOR,fontSize: 12
    );
    }
    else if(city.isEmpty){
    Fluttertoast.showToast(msg: "Please Enter city",
    toastLength: Toast.LENGTH_SHORT,gravity: ToastGravity.BOTTOM,timeInSecForIosWeb: 1,backgroundColor: BLACK_COLOR,
    textColor: WHITE_COLOR,fontSize: 12
    );
    }
    else{


      box.write('Patientname', Patientname);
      box.write('PatientAge', PatientAge);
      box.write('Patientrelation', Patientrelation);
      box.write('hospitalname', hospitalname);
    box.write('medicalcondition', hospitalname);
    box.write('city', hospitalname);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Fundraiser2()));

      print(Patientname);
      print(PatientAge);

    }


  }




}
