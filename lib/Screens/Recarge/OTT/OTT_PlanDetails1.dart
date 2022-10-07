import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';

class OTT_PlanDetails1 extends StatefulWidget {
  const OTT_PlanDetails1({Key? key}) : super(key: key);

  @override
  State<OTT_PlanDetails1> createState() => _OTT_PlanDetails1State();
}

class _OTT_PlanDetails1State extends State<OTT_PlanDetails1> {
  var h;
  var w;
  bool value = false;
  var tap;
  final _formkey = GlobalKey<FormState>();
  TextEditingController _mobilecontroller = new TextEditingController();
  TextEditingController _namecontroller = new TextEditingController();
  TextEditingController _emailcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text(
          "OTT Plan Details",
          style: TextStyle(color: WHITE_COLOR, fontSize: textSizeMedium),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                //height: h*0.45,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7), color: WHITE_COLOR),
                child: Form(
                  key: _formkey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Personal Details",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Phone Number",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextFormField(
                          maxLength: 10,
                          //  maxLengthEnforcement: MaxLengthEnforcement.none,
                          decoration: InputDecoration(
                              hintText: "9968221475",
                              counterStyle: TextStyle(
                                height: double.minPositive,
                              ),
                              counterText: ""),
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Please Enter Registered Mobile Number eg.",
                          style: TextStyle(
                              color: BLACK_GREYCOLOR, fontSize: textSizeSmall),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Text(
                          "Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextFormField(

                          decoration: InputDecoration(
                              hintText: "Mahendra Saini",

                          ),

                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Please Enter Your Name",
                          style: TextStyle(
                              color: BLACK_GREYCOLOR, fontSize: textSizeSmall),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextFormField(

                          decoration: InputDecoration(
                              hintText: "admin@gmail.com",
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Please Enter Your Email-ID",
                          style: TextStyle(
                              color: BLACK_GREYCOLOR, fontSize: textSizeSmall),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7), color: WHITE_COLOR),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      //color: WHITE_COLOR,
                      //shape: Border.all(color: LIGHT_COLOR),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(WHITE_COLOR),

                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: LIGHT_COLOR)
                            ),
                       )
                  ),
                      onPressed: (){

                  }, child: Text("ADD NEW ADDRESS",style: TextStyle(color: LIGHT_COLOR),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7), color: WHITE_COLOR),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:RichText(
                    text:TextSpan(text: "Please Note: ",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: "How to use multiple Text styles in Flutter. To use multiple styles in Text you need to use Text.rich and divide the text into smaller sections. You can read more about the Text widget in",style: TextStyle(color: BLACK_GREYCOLOR))
                    ]
                    ),

                  )


                ),
              ),
            ),
            SizedBox(
              height: h * 0.15,
            ),
            Container(
              width: w * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: tap == true ? LIGHT_COLOR : Colors.white70),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Continue",
                  style:
                      TextStyle(color: tap == true ? WHITE_COLOR : BLACK_COLOR),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
