import 'package:flutter/material.dart';

import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';

class Postpaid_Bill1 extends StatefulWidget {
  const Postpaid_Bill1({Key? key}) : super(key: key);

  @override
  State<Postpaid_Bill1> createState() => _Postpaid_Bill1State();
}

class _Postpaid_Bill1State extends State<Postpaid_Bill1> {
  var h;
  var w;
  bool Airtelpostpaid_checked = false;
  bool Bsnlpostpaid_checked = false;
  bool Vipostpaid_checked = false;
  bool Jiopostpaid_checked = false;
  bool Tatatelepostpaid_checked = false;
  bool Mtnlpostpaid_checked = false;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text(
          "Postpaid Bill",
          style: TextStyle(color: WHITE_COLOR, fontSize: textSizeMedium),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: WHITE_COLOR,
                  boxShadow: [
                    BoxShadow(color: BLACK_GREYCOLOR, blurRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: GREEN_XCOLOR,
                      child: Text(
                        "MN",
                        style: TextStyle(color: WHITE_COLOR),
                      ),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Column(
                      children: [Text("My Number"), Text("9635822551")],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: WHITE_COLOR,
                  boxShadow: [
                    BoxShadow(color: BLACK_GREYCOLOR, blurRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Select your operator",
                        style: TextStyle(
                            color: BLACK_GREYCOLOR, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: h*0.02,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    height: h * 0.035,
                                    width: w * 0.08,
                                    child: Image.asset(
                                        'assets/Images/airtel-logo_freelogovectors.net_.png')),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Text("Airtel Postpaid")
                              ],
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(
                                  (states) => LIGHT_COLOR),
                              value: Airtelpostpaid_checked,

                              shape: CircleBorder(),
                              onChanged: (bool? value) {
                                setState(() {
                                  Airtelpostpaid_checked=value!;
                                }
                                );
                              },
                            ),

                          ],
                        ),
                        Divider(
                          color: BLACK_COLOR.withOpacity(0.3),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    height: h * 0.035,
                                    width: w * 0.08,
                                    child: Image.asset(
                                        'assets/Images/download-bsnl-logo-11562992039owhtjp5yb3-removebg-preview.png')),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Text("BSNL Postpaid")
                              ],
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(
                                      (states) => LIGHT_COLOR),
                              value: Bsnlpostpaid_checked,
                              shape: CircleBorder(),
                              onChanged: (bool? value) {
                                setState(() {
                                  Bsnlpostpaid_checked = value!;
                                });
                              },
                            )

                          ],
                        ),
                        Divider(
                          color: BLACK_COLOR.withOpacity(0.3),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    height: h * 0.035,
                                    width: w * 0.08,
                                    child: Image.asset(
                                        'assets/Images/VI-Logo-PNG-removebg-preview.png')),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Text("VI Postpaid")
                              ],
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(
                                      (states) => LIGHT_COLOR),
                              value: Vipostpaid_checked,
                              shape: CircleBorder(),
                              onChanged: (bool? value) {
                                setState(() {
                                  Vipostpaid_checked = value!;
                                });
                              },
                            )
                          ],
                        ),
                        Divider(
                          color: BLACK_COLOR.withOpacity(0.3),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    height: h * 0.04,
                                    width: w * 0.1,
                                    child: Image.asset(
                                        'assets/Images/Jio-Logo-removebg-preview.png')),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Text("Jio Postpaid")
                              ],
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(
                                      (states) => LIGHT_COLOR),
                              value: Jiopostpaid_checked,
                              shape: CircleBorder(),
                              onChanged: (bool? value) {
                                setState(() {
                                  Jiopostpaid_checked = value!;
                                });
                              },
                            )
                          ],
                        ),
                        Divider(
                          color: BLACK_COLOR.withOpacity(0.3),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                    height: h * 0.04,
                                    width: w * 0.1,
                                    child: Image.asset(
                                        'assets/Images/Tata_Teleservices_Logo-removebg-preview.png')),
                                SizedBox(
                                  width: w * 0.04,
                                ),
                                Text("Tata Teleservices Postpaid - CDMA")
                              ],
                            ),
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(
                                      (states) => LIGHT_COLOR),
                              value: Tatatelepostpaid_checked,
                              shape: CircleBorder(),
                              onChanged: (bool? value) {
                                setState(() {
                                  Tatatelepostpaid_checked = value!;
                                });
                              },
                            )
                          ],
                        ),
                        Divider(
                          color: BLACK_COLOR.withOpacity(0.3),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                                height: h * 0.05,
                                width: w * 0.1,
                                child: Image.asset(
                                    'assets/Images/mtnl-1200-removebg-preview.png')),
                            SizedBox(
                              width: w * 0.04,
                            ),
                            Text("MTNL Mumbai Dolphin")
                          ],
                        ),
                        Checkbox(
                          checkColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith(
                                  (states) => LIGHT_COLOR),
                          value: Mtnlpostpaid_checked,
                          shape: CircleBorder(),
                          onChanged: (bool? value) {
                            setState(() {
                              Mtnlpostpaid_checked = value!;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
