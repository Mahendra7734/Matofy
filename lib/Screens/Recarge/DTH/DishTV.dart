import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';

class DishTv extends StatefulWidget {

  DishTv({Key? key}) : super(key: key);
  List sliderImages=[];
  @override
  State<DishTv> createState() => _DishTvState();
}

class _DishTvState extends State<DishTv> {
  var h;
  var w;
  int _currentSliderIndex = 0;
  TextEditingController subscriptionid_controller = new TextEditingController();
  final _formkey = GlobalKey<FormState>();
  final CarouselController _controller = CarouselController();
  var length=10;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    // if (widget.sliderImages.isNotEmpty) {
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Dish TV",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          // alignment: Alignment.bottomCenter,
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

                        TextFormField(
                          controller: subscriptionid_controller,
                          maxLength: length,
                          //  maxLengthEnforcement: MaxLengthEnforcement.none,
                          decoration: InputDecoration(
                              hintText: "Registered Mobile Number / Viewing Card",
                              counterStyle: TextStyle(
                                height: double.minPositive,
                              ),
                              counterText: ""
                          ),
                          //keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        Text(
                          "Your Subscriber id is located on your menu , on  the bottom  of the screen",
                          style: TextStyle(
                              color: BLACK_GREYCOLOR, fontSize: textSizeSmall),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                //height: h*0.45,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7), color: WHITE_COLOR),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Paying this bill allow fund to fetch your current and future bills so that you can you and pay them",
                    style: TextStyle(
                        color: BLACK_COLOR),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h*0.1,
            ),
            Container(
              width: w * 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: length != 10? LIGHT_COLOR : Colors.white70),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Continue",
                  style:
                  TextStyle(color: subscriptionid_controller == true ? WHITE_COLOR : BLACK_COLOR),
                ),
              ),
            )
          ],
        ),
      ),
    );
    // } else {
    //   return Container();
    // }
  }

  Widget dashboardCarouselSlider({
    required List sliderImages,
    required Function(int, CarouselPageChangedReason) onPageChanged,
  }) {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
        height: h*0.2,

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
        4,
            (index) => ClipRRect(
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
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/Images/mobile-recharge.jpg'),
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
