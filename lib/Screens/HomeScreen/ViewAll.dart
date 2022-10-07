import 'package:flutter/material.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import '../Bill Payment/Bill Payment.dart';
import '../BottomApp/BottomAppBar.dart';
import '../BusTicket.dart';
import '../E_Mart.dart';
import '../Earn with system.dart';
import '../Earn_Money.dart';
import 'package:get/get.dart';
import '../Raisefund_list.dart';
import '../Recarge/Recharge.dart';

int tap1 = 0;

class ViewAll extends StatefulWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  var h;
  var w;
  int tap = 0;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text(
          "Fund ",
          style: TextStyle(color: WHITE_COLOR, fontSize: textSizeMedium),
        ),
      ),
      body: Container(
        height: h * 0.58,
        // width: w*0.95,
        margin: EdgeInsets.only(top: 10,left: 6,right: 6,bottom: 6),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: WHITE_COLOR,
            boxShadow: [BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => Raisefund_list());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Raisefund_list()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.05,
                                  width: w * 0.11,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/funding.png'),
                                  )),
                              Text(
                                "Raise Fund",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Recharge()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.05,
                                  width: w * 0.11,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/mobile-app.png'),
                                  )),
                              Text(
                                "Recharge",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Bill_Payment()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.05,
                                  width: w * 0.11,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/8525542.png'),
                                  )),
                              Text(
                                "Bill Payment",
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
                    onTap: () {
                      clicked = 1;
                      setState(() {
                        if (tap1 == 0) {
                          tap1++;
                          print("tap");
                        }
                        print("tap");
                      });

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomAppbar(
                                currentindex: 0,
                              )));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.05,
                                  width: w * 0.11,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/open-book.png'),
                                  )),
                              Text(
                                "E-education",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: h * 0.13,
                    width: w * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WHITE_COLOR,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2, color: BLACK_GREYCOLOR)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: h * 0.05,
                                width: w * 0.11,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(100),
                                  color: LIGHT_COLOR,
                                  // image: DecorationImage(
                                  //   image: AssetImage('assets/Images/salary.png')
                                  // )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                      'assets/Icons/life-insurance.png'),
                                )),
                            Text(
                              "Insurence",
                              style: TextStyle(fontSize: textSizeSmall),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.13,
                    width: w * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WHITE_COLOR,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2, color: BLACK_GREYCOLOR)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: h * 0.05,
                                width: w * 0.11,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(100),
                                  color: LIGHT_COLOR,
                                  // image: DecorationImage(
                                  //   image: AssetImage('assets/Images/salary.png')
                                  // )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                      'assets/Icons/to-do-list.png'),
                                )),
                            Text(
                              "Daily Task",
                              style: TextStyle(fontSize: textSizeSmall),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.13,
                    width: w * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WHITE_COLOR,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2, color: BLACK_GREYCOLOR)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: h * 0.05,
                                width: w * 0.11,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(100),
                                  color: LIGHT_COLOR,
                                  // image: DecorationImage(
                                  //   image: AssetImage('assets/Images/salary.png')
                                  // )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                      'assets/Icons/loan.png'),
                                )),
                            Text(
                              "Loan",
                              style: TextStyle(fontSize: textSizeSmall),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.13,
                    width: w * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WHITE_COLOR,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2, color: BLACK_GREYCOLOR)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: h * 0.05,
                                width: w * 0.11,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(100),
                                  color: LIGHT_COLOR,
                                  // image: DecorationImage(
                                  //   image: AssetImage('assets/Images/salary.png')
                                  // )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                      'assets/Icons/credit-card.png'),
                                )),
                            Text(
                              "Credit Card",
                              style: TextStyle(fontSize: textSizeSmall),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: h * 0.13,
                    width: w * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WHITE_COLOR,
                          boxShadow: [
                            BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: h * 0.05,
                                width: w * 0.11,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: LIGHT_COLOR,
                                  // image: DecorationImage(
                                  //   image: AssetImage('assets/Images/salary.png')
                                  // )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                      'assets/Icons/credit-card.png'),
                                )),
                            Text(
                              "E-gift brand boucher",
                              style: TextStyle(fontSize: textSizeSmall),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Earn_with_system()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child:
                                        Image.asset('assets/Icons/salary.png'),
                                  )),
                              Text(
                                "Earn with system",
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Earn_Money()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                        'assets/Icons/earnings.png'),
                                  )),
                              Text(
                                "Earn Money",
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
                    height: h * 0.13,
                    width: w * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: WHITE_COLOR,
                          boxShadow: [
                            BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                                height: h * 0.06,
                                width: w * 0.13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: LIGHT_COLOR,
                                  // image: DecorationImage(
                                  //   image: AssetImage('assets/Images/salary.png')
                                  // )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset(
                                      'assets/Icons/credit-card.png'),
                                )),
                            Text(
                              "DMT Account",
                              style: TextStyle(fontSize: textSizeSmall),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => E_Mart()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset('assets/Icons/mart.png'),
                                  )),
                              Text(
                                "E - Mart",
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
                    width: w * 0.025,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Earn_with_system()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child:
                                        Image.asset('assets/Icons/salary.png'),
                                  )),
                              Text(
                                "Lic Insurence",
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
                    width: w * 0.025,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => BusTicket()));
                    },
                    child: SizedBox(
                      height: h * 0.13,
                      width: w * 0.22,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: WHITE_COLOR,
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  height: h * 0.06,
                                  width: w * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: LIGHT_COLOR,
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/Images/salary.png')
                                    // )
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Image.asset(
                                      'assets/Icons/bus-ticket.png',
                                    ),
                                  )),
                              Text(
                                "Bus Ticket",
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
