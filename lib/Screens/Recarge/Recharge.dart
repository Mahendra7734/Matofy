import 'package:flutter/material.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import 'CableTVRecharge.dart';
import 'DTH/DTHRecharge.dart';
import 'FASTag/FasTag.dart';
import 'MobileRecharge.dart';
import 'OTT/OTTRecharge.dart';
class Recharge extends StatefulWidget {
  const Recharge({Key? key}) : super(key: key);

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  var h;
  var w;

  int index = 0;
  int tap = 0;


  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Recharge",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body:
      Container(

        height: h * 0.41,
        // width: w*0.95,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: WHITE_COLOR,
            boxShadow: [
              BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OTT()));
                    },
                    child: SizedBox(
                      height: h * 0.12,
                      width: w * 0.21,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/ott-airlines.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "OTT Recharge",
                                style:
                                TextStyle(fontSize: textSizeSmall),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DTHRecharge()));
                    },
                    child: SizedBox(
                      height: h * 0.12,
                      width: w * 0.21,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/satellite-dish.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "DTH Recharge",
                                style: TextStyle(fontSize: textSizeSmall),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MobileRechargeView1()));
                    },
                    child: SizedBox(
                      height: h * 0.12,
                      width: w * 0.21,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/smartphone-call.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "Mobile Recharge",
                                style: TextStyle(fontSize: textSizeSmall),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FasTag()));

                    },
                    child: SizedBox(
                      height: h * 0.12,
                      width: w * 0.21,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                      'assets/Icons/license.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "FASTag Recharge",
                                style: TextStyle(fontSize: textSizeSmall),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: h*0.02,
              ),
              // SizedBox(
              //   width: w*0.022,
              // ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CableRecharge()));
                },
                child: SizedBox(
                  height: h * 0.12,
                  width: w * 0.21,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: WHITE_COLOR,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1, color: BLACK_GREYCOLOR)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              height: h * 0.06,
                              width: w * 0.13,
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //   BorderRadius.circular(100),
                              //   color: LIGHT_COLOR,
                              //   // image: DecorationImage(
                              //   //   image: AssetImage('assets/Images/salary.png')
                              //   // )
                              // ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                    'assets/Icons/cable-tv.png',color: LIGHT_COLOR,),
                              )),
                          Text(
                            "Cable TV",
                            style: TextStyle(fontSize: textSizeSmall),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),

      ),

    );
  }
}
