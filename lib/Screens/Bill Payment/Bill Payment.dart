import 'package:flutter/material.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import 'Electricity_bill/ElectricityBill.dart';
import 'GasBill/GasCylinder.dart';
import 'Landline_bill/LandlineBill.dart';
import 'Postpaid_bill/Postpaid Bill.dart';
import 'RentPayment.dart';
import 'Water_bill/WaterBill.dart';
class Bill_Payment extends StatefulWidget {
  const Bill_Payment({Key? key}) : super(key: key);

  @override
  State<Bill_Payment> createState() => _Bill_PaymentState();
}

class _Bill_PaymentState extends State<Bill_Payment> {
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
        title: Text("Bill Payment",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ElectricityBill()));
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
                                      'assets/Icons/light-bulb.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "Electricity Bill",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WaterBill()));

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
                                      'assets/Icons/faucet.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "Water Bill",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GasCylinder()));

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
                                      'assets/Icons/gas-bottle.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "Gas Cylinder",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Landline_bill()));

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
                                      'assets/Icons/landline.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "Broadband/ Landline Bill",
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
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Postpaid_bill()));

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
                                      'assets/Icons/mobile-app.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "Postpaid",
                                style: TextStyle(fontSize: textSizeSmall),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w*0.022,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RentPayment()));

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
                                      'assets/Icons/rent.png',color: LIGHT_COLOR,),
                                  )),
                              Text(
                                "Rent Payment",
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


            ],
          ),
        ),

      ),

    );
  }
}
