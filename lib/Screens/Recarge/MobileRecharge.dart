
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';


class MobileRechargeView1 extends StatefulWidget {
  const MobileRechargeView1({Key? key}) : super(key: key);

  @override
  State<MobileRechargeView1> createState() => _MobileRechargeView1State();
}

class _MobileRechargeView1State extends State<MobileRechargeView1> {
  TextEditingController selectvalue = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  var browserPlan = [];
  var item;
  var operatorCode;
  var circleCode;
  var item2;
  bool checkBoxvalue = false;
  var recharge;
  var amount;
  bool _IsLoading = false;
  @override
  void initState() {
    super.initState();
  }

  var h;
  var w;

  Future<void>? _launched;
  bool value = false;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery
        .of(context)
        .size
        .height;
    w = MediaQuery
        .of(context)
        .size
        .width;


    return Scaffold(
    //  backgroundColor: LIGHT_COLOR,
        appBar: AppBar(
          title: Text("Prepaid Mobile Recharge"),
          backgroundColor: LIGHT_COLOR,
        ),
        body: Container(
            width: Get.width,
            height: Get.height,
            child: _IsLoading == true
                ? Center(
              child: CircularProgressIndicator(),
            )
                : Container(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ListView(children: [
                 SizedBox(
                   height: 50,
                 ),
                  Row(
                    children: [
                      Icon(
                        Icons.radio_button_checked,
                      ),
                     // widthSpace10,
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Prepaid",
                      //  style:Te ,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    onChanged: (v) {
                      setState(() {
                        print(v);
                        if (v.length == 10) {
                          //operatorApi();
                        }
                      });
                    },
                    controller: mobileController,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter Mobile Number",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Colors.black, width: 1.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                 // heightSpace20,
                  ListTile(
                    leading: Text('Operator :-',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    trailing: Text(
                        // operatorCode != null
                        //     ? '${operatorCode.toString()}'
                        //     : ' ',
                      "Jio",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.red,
                        )),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                            onTap: () {},
                            controller: amountController,
                           // readOnly: true,
                            //readOnly: amount != null ? true : false,
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.greenAccent[700],
                            ),
                            decoration: InputDecoration(
                              hintText: "Amount",
                              hintStyle: TextStyle(color: Colors.black54),
                              labelStyle:
                              TextStyle(color: Colors.black54),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1.0),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: ElevatedButton(
                              onPressed: ()  {
                                // String mobile = mobileController.text;
                                // if (mobile.isEmpty || mobile.length != 10) {
                                //   //toast("Please enter  Mobile Number");
                                // } else {
                                //   var res = await Get.to(
                                //           () => MobileRechargePlansView(),
                                //       arguments: item2);
                                //   print(res);
                                //   recharge = res;
                                //   print(
                                //       recharge['recharge_amount'].toString());
                                //   print(recharge['id'].toString());
                                //   amount =
                                //       recharge['recharge_amount'].toString();
                                //   print(amount);
                                //   amountController.text = '₹ ${amount}/-';
                                // }
                              },
                              child: Text(
                                "Browse Plans",
                                textAlign: TextAlign.center,
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: LIGHT_COLOR,
                                  fixedSize: Size(20, 55),
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(5))),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Checkbox(
                          visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                          value: checkBoxvalue,
                          onChanged: (value) {
                            setState(() {
                              checkBoxvalue = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                        "=> Fast Forward",style: TextStyle(color: LIGHT_COLOR,fontWeight: FontWeight.bold),
                              ),
                              Text(
                               "Instant payment from your fund balance"
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 52,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // String mobile = mobileController.text;
                      // String amount12 = amountController.text;
                      //
                      // if (mobile.isEmpty || mobile.length != 10) {
                      //   Get.snackbar('Select Mobile',
                      //       'Please enter valid mobile number',
                      //       snackPosition: SnackPosition.BOTTOM,
                      //       backgroundColor: Color(0xFF072D40),
                      //       colorText: Colors.white);
                      // } else if (amount12.isEmpty) {
                      //   Get.snackbar('Select Plan',
                      //       'Please choice your recharge plan',
                      //       snackPosition: SnackPosition.BOTTOM,
                      //       backgroundColor: Color(0xFF072D40),
                      //       colorText: Colors.white);
                      //   //  toast("Please choice your recharge plan");
                      // } else {
                      //   String amount =
                      //   recharge['recharge_amount'].toString();
                      //   String rechargeId = recharge['id'].toString();
                      //   var d = {
                      //     'mobile': mobile,
                      //     'amount': amount,
                      //     'rechargeId': rechargeId,
                      //     'Circle_Code': circleCode,
                      //     'Operator_Code': operatorCode,
                      //   };
                      //   //Get.to(() => Webview(), arguments: d);
                      // }
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          context: context,
                          builder: (ctx) => Proceed_To_Pay(ctx));
                    },
                    child: Text("Proceed to Pay",),
                        //style: BaseStyles.whiteBold18),
                    style: ElevatedButton.styleFrom(
                        primary:LIGHT_COLOR,
                        fixedSize: Size(Get.width * 1.0, 50),
                        shape: new RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Home > Mobile Recharge',
                      style: TextStyle(color: LIGHT_COLOR,fontWeight: FontWeight.bold),
                    ),
                  ),
                  //heightSpace20,
                  Wrap(
                    children: [
                      Text(
                        'Disclaimer: We support most types of recharges, but please check with your operator before you proceed. ',
                        //style: BaseStyles.grey14,
                      )
                    ],
                  )
                ]),
              ),
            )));
  }

  // operatorApi() async {
  //   setState(() {
  //     _IsLoading = true;
  //   });
  //   String mobile = mobileController.text;
  //   if (mobile.isEmpty) {
  //     Get.snackbar('Select Operator', 'Please enter valid mobile number',
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: Color(0xFF072D40),
  //         colorText: Colors.white);
  //     // toast('Please enter mobile number');
  //   } else {
  //     try {
  //       var res = await ApiProvider2().postRequest(
  //           apiUrl: 'fetch-mobile-operators', data: {'MOBILENUMBER': mobile});
  //
  //       if (res['Status'] == '0') {
  //         print('Resquest${res}');
  //         setState(() {
  //           _IsLoading = false;
  //           print(1);
  //           print(res['Status']);
  //           operatorCode = res['OperatorCode'];
  //           circleCode = res['CircleCode'];
  //
  //           item2 = {
  //             'MobileNumber': mobile,
  //             'Circle_Code': circleCode,
  //             'Operator_Code': operatorCode,
  //           };
  //           print(item2);
  //         });
  //       } else {
  //         setState(() {
  //           _IsLoading = false;
  //         });
  //         Fluttertoast.showToast(
  //             msg: res['ErrorDescription'],
  //             toastLength: Toast.LENGTH_SHORT,
  //             gravity: ToastGravity.BOTTOM,
  //             timeInSecForIosWeb: 1,
  //             backgroundColor: Colors.black,
  //             textColor: Colors.white,
  //             fontSize: 16.0);
  //       }
  //       print(res);
  //     } catch (e) {
  //       setState(() {
  //         _IsLoading = false;
  //       });
  //       print(e.toString());
  //     }
  //   }
  // }

// rechargeApi() async {
//   String operatorName = item2['Operator_Code'].toString();
//   String circleName = item2['Circle_Code'].toString();
//   String mobileNumber = mobileController.text;
//   String amount = recharge['recharge_amount'].toString();

//   if (mobileNumber.isEmpty) {
//     toast('Please enter mobile number');
//   } else {
//     var d = {
//       'userId': userId(),
//       'circle': circleName,
//       'mobile': mobileNumber,
//       'planId': '1',
//       'recharge_type': 'prepaid',
//       'amount': amount,
//       'operatorId': recharge['id'].toString(),
//       'operator_name': operatorName,
//       'serviceType': '1'
//     };
//     print(d);
//     try {
//       var res = await ApiProvider()
//           .postRequest(apiUrl: 'user-recharge-mobile', data: d);
//       print(res);
//       if (res['status_code'] == 1) {
//         Get.offAll(() => RechargeStatus(), arguments: {
//           'message': res['message'].toString(),
//           'amount': amount,
//         });
//       } else {
//         toast(res['message'].toString());
//       }
//     } catch (e) {
//       print(e.toString());
//       toast('Network error');
//     }
//   }
// }

  Proceed_To_Pay(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      final Uri debit_card = Uri(scheme: 'https', host: 'www.bankofbaroda.in', path: 'headers/');
      final Uri paytm = Uri(scheme: 'https', host: 'www.paytm.com', path: 'headers/');
      final Uri phone_pay = Uri(scheme: 'https', host: 'www.phonepe.com', path: '/hi/index.html');
      final Uri net_banking = Uri(scheme: 'https', host: 'www.netbanking.indianbank.in', path: '/jsp/startIBPreview.jsp');
      return Container(
        height: 422,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(24),topLeft: Radius.circular(24)),
            color: Colors.white


        ),


        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Recharge Amount",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: h*0.04,
                          width: w*0.037,
                          child: Image.asset('assets/Icons/rupee-indian.png')),
                      Text("221"),
                      InkWell(
                        onTap: () => Navigator.pop(context, false),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                              alignment: Alignment.topRight,
                              child: Icon(Icons.clear)),
                        ),
                      ),

                    ],
                  ),

                ],
              ),

              Divider(
                height: 1,

                color: Color.fromARGB(255, 112, 112, 112),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 15,top: 10),
                child: Text("Choose Payment Option",style: TextStyle(fontWeight: FontWeight.bold,fontSize: textSizeLarge),),
              ),
              InkWell(
                onTap: (){
                  _launched = _launchInBrowser(debit_card);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Debit & Credit Card",style: TextStyle(fontSize: textSizeNormal),),
                      SizedBox(
                          height: h*0.03,
                          width: w*0.07,
                          child: Image.asset('assets/Icons/credit-card (1).png')),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h*0.01,
              ),
              Divider(
                color: BLACK_COLOR.withOpacity(0.3),
              ),
              InkWell(
                onTap: (){
                  _launched = _launchInBrowser(paytm);

                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Paytm",style: TextStyle(fontSize: textSizeNormal),),
                      SizedBox(
                          height: h*0.03,
                          width: w*0.07,
                          child: Image.asset('assets/Icons/paytm.png')),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h*0.01,
              ),
              Divider(
                color: BLACK_COLOR.withOpacity(0.3),
              ),
              InkWell(
                onTap: (){
                  _launched = _launchInBrowser(phone_pay);

                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Phone Pay",style: TextStyle(fontSize: textSizeNormal),),
                      SizedBox(
                          height: h*0.04,
                          width: w*0.1,
                          child: Image.asset('assets/Icons/PhonePe-Logo.wine.png')),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h*0.01,
              ),
              Divider(
                color: BLACK_COLOR.withOpacity(0.3),
              ),
              InkWell(
                onTap: (){
                  _launched = _launchInBrowser(net_banking);

                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Net Banking",style: TextStyle(fontSize: textSizeNormal),),
                      SizedBox(
                          height: h*0.03,
                          width: w*0.07,
                          child: Image.asset('assets/Icons/e-banking-logo (1).jpg')),

                    ],
                  ),
                ),
              ),


            ]
        ),


      );
    });
  }
}
