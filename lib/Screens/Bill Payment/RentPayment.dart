import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';

class RentPayment extends StatefulWidget {

  RentPayment({Key? key}) : super(key: key);
  List sliderImages=[];
  @override
  State<RentPayment> createState() => _RentPaymentState();
}

class _RentPaymentState extends State<RentPayment> {
  var h;
  var w;
  int _currentSliderIndex = 0;

  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    // if (widget.sliderImages.isNotEmpty) {
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Rent Payment",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      // appBar: AppBar(
      //
      //     backgroundColor: LIGHT_COLOR,
      //     title: Container(
      //       width: double.infinity,
      //       height: 40,
      //       decoration: BoxDecoration(
      //           color: Colors.white, borderRadius: BorderRadius.circular(5)),
      //       child: Center(
      //         child: TextField(
      //           onChanged: (value) => _runFilter(value),
      //           decoration: InputDecoration(
      //               prefixIcon: const Icon(Icons.search),
      //               suffixIcon: IconButton(
      //                 icon: const Icon(Icons.clear),
      //                 onPressed: () {
      //                   /* Clear the search field */
      //                 },
      //               ),
      //               hintText: 'Search...',
      //               border: InputBorder.none),
      //         ),
      //       ),
      //     )),
      body: Column(
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
            //  physics: ScrollPhysics(),
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

          Container(
            margin: EdgeInsets.only(left: w*0.03,right: w*0.03,top: h*0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: WHITE_COLOR
            ),
            height: h*0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,top: 10,bottom: 15),
                  child: Text("Pay for Rentals",style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: h*0.45,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset('assets/Images/Rent_Home-512.webp'),
                                  )),
                              SizedBox(
                                width: w*0.04,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Home/ Shoap Rent"),

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
                        );
                      }),
                ),
              ],
            ),
          ),

        ],
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
                    image: AssetImage('assets/Images/HOUSE-RENT.jpg'),
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
