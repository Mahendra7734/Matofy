import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';
import 'AirtelDegital_TV.dart';
import 'DishTV.dart';
import 'SunDirect.dart';
import 'TataSky.dart';
import 'd2h.dart';
class DTHRecharge extends StatefulWidget {
   DTHRecharge({Key? key}) : super(key: key);
  List sliderImages=[];
  @override
  State<DTHRecharge> createState() => _DTHRechargeState();
}

class _DTHRechargeState extends State<DTHRecharge> {
  var h;
  var w;
  int _currentSliderIndex = 0;

  final CarouselController _controller = CarouselController();

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
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("DTH Recharge",
          style: TextStyle(color: WHITE_COLOR, fontSize: textSizeMedium),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          dashboardCarouselSlider(
            sliderImages: widget.sliderImages,
            onPageChanged: (index, reason) {
              setState(() {
                _currentSliderIndex = index;
              });
            },
          ),
          //? Dot Indicator
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              // height: 15,
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              //margin: EdgeInsets.only(bottom: 5),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(12),
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.sliderImages
                    .asMap()
                    .entries
                    .map((entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Container(
                      width: 5.0,
                      height: 30.0,
                      margin: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentSliderIndex == entry.key
                            ? Colors.black54
                            : Colors.white,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: h * 0.04),
            child: Row(
              children: [
                Icon(
                  Icons.radio_button_checked, color: LIGHT_COLOR,
                ),
                // widthSpace10,
                SizedBox(
                  width: 10,
                ),
                Text(
                  "DTH",
                  //  style:Te ,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.black12,
            margin: EdgeInsets.only(top: h * 0.03),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 8, right: 15, bottom: 8),
              child: Text("Select DTH Recharge"),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Airtel_DegitalTV()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.black45)
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          'assets/Images/airtel-logo_freelogovectors.net_.png',
                          ),
                      )),
                  SizedBox(
                    width: w * 0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Airtel Digital TV"),

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
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TataSky()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.black45)
                          ]
                        //color: Colors.red
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Image.asset(
                            'assets/Images/tata-sky-squarelogo-1416632044545.png'),
                      )),
                  SizedBox(
                    width: w * 0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Tata Sky (Tata Play)"),

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
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => DishTv()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      child: Image.asset('assets/Images/dishtv.png')),
                  SizedBox(
                    width: w * 0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dish TV"),

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
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => D2h()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.black45)
                          ]
                      ),
                      child: Image.asset(
                          'assets/Images/d2h.png.image-removebg-preview.png')),
                  SizedBox(
                    width: w * 0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("d2h"),

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
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SunDirect()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 1, color: Colors.black45)
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                            'assets/Images/sunhd-removebg-preview.png'),
                      )),
                  SizedBox(
                    width: w * 0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sun Direct"),

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
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, top: h * 0.03),
            child: Text(
              'Home > DTH Recharge',
              style: TextStyle(color: LIGHT_COLOR, fontWeight: FontWeight.bold),
            ),
          ),
          //heightSpace20,
          Padding(
            padding: EdgeInsets.only(left: 15, top: h * 0.01),
            child: Text(
              'Disclaimer: Make instant Recharge  Your Airtel Digital TV , Tata Sky ,Dish TV ,d2h , Sun Direct and more',
              //style: BaseStyles.grey14,
            ),
          )
        ],
      ),
    );
  }

  Widget dashboardCarouselSlider({
    required List sliderImages,
    required Function(int, CarouselPageChangedReason) onPageChanged,
  }) {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
        height: h * 0.2,

        autoPlay: true,
        autoPlayCurve: Curves.easeInOut,
        enableInfiniteScroll: true,
        // autoPlayAnimationDuration: Duration(milliseconds: 300),
        autoPlayInterval: Duration(seconds: 4),
        viewportFraction: 1,
        onPageChanged: onPageChanged,
      ),
      items:
      List.generate(
        //sliderImages.length,
        3,
            (index) =>
            ClipRRect(
              //borderRadius: BorderRadius.circular(15),
              child: Container(
                // height: h*0.2,
                width: double.infinity,
                // child: Image.network(
                //   sliderImages[index],
                //   width: double.infinity,
                //   height:h*0.1 ,
                //   fit: BoxFit.cover,
                // ),
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/Images/1582994769-23217254.jpg'),
                        fit: BoxFit.fill
                    )
                ),
                //child: Image.asset('assets/Images/fastag-copy1-1024x576.jpg',fit: BoxFit.fill,),
              ),
            ),
      ),
    );
  }
}