import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BusTicket extends StatefulWidget {
   BusTicket({Key? key}) : super(key: key);
  List sliderImages=[];
  @override
  State<BusTicket> createState() => _BusTicketState();
}

class _BusTicketState extends State<BusTicket> {
  var h;
  var w;
  int _currentSliderIndex = 0;

  final CarouselController _controller = CarouselController();
  DateTime _currentdate = DateTime.now();

  Future<Null> _datechange(BuildContext context) async {
    final DateTime? _datechange = await showDatePicker(
        context: context,
        initialDate: _currentdate,
        firstDate: DateTime(2001),
        lastDate: _currentdate);
    if (_datechange != null) {
      setState(() {
        _currentdate = _datechange;
      });
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
    String dob = DateFormat.yMMMd().format(_currentdate);
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text(
          "Bus Ticket Booking ",
          style: TextStyle(color: WHITE_COLOR, fontSize: textSizeMedium),
        ),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            EdgeInsets.only(left: w * 0.05, right: w * 0.05, top: h * 0.04),
            child: Container(
              height: h * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: WHITE_COLOR),
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text("From"),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_city_sharp)),
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text("To"),
                    TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.location_city_sharp)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
            EdgeInsets.only(left: w * 0.05, right: w * 0.05, top: h * 0.04),
            child: Container(
              height: h * 0.09,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: WHITE_COLOR),
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.04, right: w * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Journey Date"),

                              Row(
                                children: [
                                  Container(
                                    child: IconButton(
                                        onPressed: () {
                                          _datechange(context);
                                        },
                                        icon: Icon(Icons.date_range)),
                                  ),
                                  Expanded(
                                    child: Container(
                                      //margin: EdgeInsets.only(left: 10),
                                        child: Text('$dob', style: TextStyle(
                                            fontWeight: FontWeight.bold),)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Text("Today | Tomorrow")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: w * 0.5,
            margin: EdgeInsets.only(top: h * .05),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: WHITE_COLOR
            ),
            child: MaterialButton(onPressed: () {

            },
              child: Text("Search Bus", style: TextStyle(color: BLACK_COLOR),),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: h*0.1),
            child: dashboardCarouselSlider(
              sliderImages: widget.sliderImages,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentSliderIndex = index;
                });
              },
            ),
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
                children: widget.sliderImages.asMap().entries.map((entry) {
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
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/Images/SafetyBanner-1604043106.jpg'),
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