import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Api_provider.dart';
import '../../Auth/RaiseFund_list.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import '../../Storage/storage.dart';
import '../Bill Payment/Bill Payment.dart';
import '../BottomApp/BottomAppBar.dart';
import '../Earn with system.dart';
import '../Earn_Money.dart';
import '../Raisefund_list.dart';
import '../Recarge/Recharge.dart';
import '../image_slider.dart';
import 'Customer_Profile.dart';
import 'Sponsor.dart';
import 'Trending Fundraiser.dart';
import 'package:get/get.dart';

import 'ViewAll.dart';

int tap1 = 0;

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  var h;
  var w;

  int index = 0;
  int tap = 0;
  var slider = [], url;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Sliders();
  }

  @override
  Widget build(BuildContext context) {
    print(id());

    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: LIGHT_COLOR,
          child: Column(
            children: [
              slider.length == 0
                  ? Container()
                  : slider == null
                      ? Center(child: CircularProgressIndicator())
                      : CarouselSliderImg(
                          sliderImages: List.generate(slider.length,
                              (index) => '${url}/${slider[index]['image']}'),
                        ),

              Container(

                height: h * 0.43,
                // width: w*0.95,
                margin: EdgeInsets.only(top: 10,left: 6,right: 6,bottom: 6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: WHITE_COLOR,
                    boxShadow: [
                      BoxShadow(blurRadius: 2, color: BLACK_GREYCOLOR)
                    ]),
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
                                      builder: (context) =>
                                          Earn_with_system()));
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
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12),
                                            child: Image.asset(
                                                'assets/Icons/salary.png'),
                                          )),
                                      Text(
                                        "Earn with system",
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
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12),
                                            child: Image.asset(
                                                'assets/Icons/earnings.png'),
                                          )),
                                      Text(
                                        "Earn Money",
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
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ViewAll()));
                            },
                            child: Container(
                              width: w*0.2,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: WHITE_COLOR),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                      child: Icon(Icons.navigate_next_outlined,color: WHITE_COLOR,),backgroundColor: LIGHT_COLOR,),
                                  Text("View All"),

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Trending_Fundraiser(),
              Text(
                "Sponser Link",
                style: TextStyle(
                    fontSize: textSizeMedium,
                    color: WHITE_COLOR,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Sponsor_link(),
              ),
              Customer_Profile()
            ],
          ),
        ),
      ),
    );
  }

  Sliders() async {
    var data = {'user_id': id()};
    try {
      var res =
          await ApiProvider().postRequest(apiUrl: 'home-slider', data: data);
      if (res['status'].toString() == '1') {
        setState(() {
          slider = res['Slider'];
          url = res['slider_url'];
        });
        print(slider);
        print(url);
        // toast(res['message'].toString(),Colors.green);
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }
}
