import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
class CableRecharge extends StatefulWidget {
  const CableRecharge({Key? key}) : super(key: key);

  @override
  State<CableRecharge> createState() => _CableRechargeState();
}

class _CableRechargeState extends State<CableRecharge> {
  var h;
  var w;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Cable TV Recharge",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left:15,top: h*0.04),
              child: Row(
                children: [
                  Icon(
                    Icons.radio_button_checked,color: LIGHT_COLOR,
                  ),
                  // widthSpace10,
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Cable TV",
                    //  style:Te ,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color:Colors.black12,
              margin: EdgeInsets.only(top: h*0.03),
              child: Padding(
                padding: const EdgeInsets.only(left: 15,top: 8,right: 15,bottom: 8),
                child: Text("Select Cable TV Recharge"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                      ),
                      child: Image.asset('assets/Images/ACT-Digital-TV-Bangalore-Customer-Care-Number-Helpline-Toll-Free-removebg-preview.png')),
                  SizedBox(
                    width: w*0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ACT Digital TV"),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Divider(
                            height: 5,
                            color: BLACK_COLOR.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                        //color: Colors.red
                      ),
                      child: Image.asset('assets/Images/asianet-digital-tv-channel-number-package-details-removebg-preview.png')),
                  SizedBox(
                    width: w*0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Asianet Digital TV"),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Divider(
                            height: 5,
                            color: BLACK_COLOR.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                      ),
                      child: Image.asset('assets/Images/gtpl__2_-removebg-preview.png')),
                  SizedBox(
                    width: w*0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("GTPL Cable TV"),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Divider(
                            height: 5,
                            color: BLACK_COLOR.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                      ),
                      child: Image.asset('assets/Images/icc-removebg-preview.png')),
                  SizedBox(
                    width: w*0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ICC Network"),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Divider(
                            height: 5,
                            color: BLACK_COLOR.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                      ),
                      child: Image.asset('assets/Images/gtpl__2_-removebg-preview.png')),
                  SizedBox(
                    width: w*0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("GTPL CATV Lco Wallet Top Up"),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Divider(
                            height: 5,
                            color: BLACK_COLOR.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                      ),
                      child: Image.asset('assets/Images/nxt1-removebg-preview.png')),
                  SizedBox(
                    width: w*0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("NXTDigital"),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Divider(
                            height: 5,
                            color: BLACK_COLOR.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                      ),
                      child: Image.asset('assets/Images/sangali-removebg-preview.png')),
                  SizedBox(
                    width: w*0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sangali Media communication"),

                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Divider(
                            height: 5,
                            color: BLACK_COLOR.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 15,top: h*0.03),
              child: Text(
                'Home > Cable TV Recharge',
                style: TextStyle(color: LIGHT_COLOR,fontWeight: FontWeight.bold),
              ),
            ),
            //heightSpace20,
            Padding(
              padding:  EdgeInsets.only(left: 15,top: h*0.01),
              child: Text(
                'Disclaimer: Make instant Recharge  Your ACT Digital TV , Asianet Digital TV ,GTPL Cable TV ,ICC Network , GTPL CATV Lco Wallet Top Up ,NXTDigital ,Sangali Media Communication and more',
                //style: BaseStyles.grey14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
