import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselSliderImg extends StatefulWidget {
  List sliderImages;
  CarouselSliderImg({required this.sliderImages});

  @override
  _CarouselSliderImgState createState() => _CarouselSliderImgState();

//   @override
// HomeScreen_EmployeeState createState() => HomeScreen_EmployeeState();
}

class _CarouselSliderImgState extends State<CarouselSliderImg> {
  int _currentSliderIndex = 0;
  final CarouselController _controller = CarouselController();
 var h;
 var w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    if (widget.sliderImages.isNotEmpty) {
      return Stack(
        alignment: Alignment.bottomCenter,
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
        ],
      );
    } else {
      return Container();
    }
  }

  Widget dashboardCarouselSlider({
    required List sliderImages,
    required Function(int, CarouselPageChangedReason) onPageChanged,
  }) {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
       // height: Get.width / 1.9,
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
        sliderImages.length,
            (index) => ClipRRect(
              //borderRadius: BorderRadius.circular(15),
              child: Container(
                height: h*0.2,

                child: Image.network(
                  sliderImages[index],
                  width: double.infinity,
                  height:h*0.1 ,
                  fit: BoxFit.cover,
                ),
              ),
            ),
      ),
    );
  }
}