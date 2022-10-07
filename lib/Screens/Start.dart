import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import '../COLORS/COLORS.dart';
import '../Storage/storage.dart';
import 'BottomApp/BottomAppBar.dart';
import 'Login.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var height = 0.0;
  var width = 0.0;
  int mCurrentIndex = -1;
  List<Widget> pages = [
    PageOne(

    ),
    PageTwo(

    ),PageThree(

    )
  ];
  PageController _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;

  var currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    print(id());
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      //backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageIndicatorContainer(
            padding: EdgeInsets.only(bottom: 30),
            key: _scaffoldKey,
            child: PageView.builder(
              controller: _controller,
              onPageChanged: _onPageViewChange,
              itemBuilder: (context, position) {
                return pages[position];
              },
              itemCount: 3,
            ),
            align: IndicatorAlign.bottom,
            length: 3,
            indicatorSpace: 10.0,
            indicatorColor: Colors.white,
            indicatorSelectorColor: Colors.red,
          ),


          Align(
            alignment: Alignment.topRight,
            child:
            Padding(
              padding: const EdgeInsets.only(right: 25,top: 35),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                color: WHITE_COLOR,
                onPressed: (){
                  id() != ''
                      ? Get.offAll(() =>BottomAppbar(currentindex: 0,))
                      : Get.offAll(() => Login());
                  // id()!=''?
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomAppbar(currentindex: 0,)))
                  //     :Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
                },child: Text("Skip>>",style: TextStyle(color: LIGHT_COLOR),),),
            ),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15,bottom: 15),
              child: FloatingActionButton(

                onPressed: () {
                  print(mCurrentIndex);
                  if (mCurrentIndex == 2) {
                    id() != ''
                        ? Get.offAll(() =>BottomAppbar(currentindex: 0,))
                        : Get.offAll(() => Login());
                  } else {
                    _controller.nextPage(
                        duration: _kDuration, curve: _kCurve);
                  }
                },
                backgroundColor: WHITE_COLOR,
                child: Icon(Icons.arrow_forward,color: LIGHT_COLOR,size: 30,),
              ),
            ),
          ),

        ],
      ),
    );
  }

  _onPageViewChange(int page) {
    setState(() {
      mCurrentIndex = page;
      print(mCurrentIndex);
    });
  }
}

class PageOne extends StatelessWidget {


  PageOne({Key? key, }) : super(key: key);
  var h;
  var w;
  @override
  Widget build(BuildContext context) {

    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      child: Image.asset('assets/Images/tudor-baciu-BZOEJ0iRv5A-unsplash.jpg',fit: BoxFit.fill,),
    );
  }
}

class PageTwo extends StatelessWidget {

   PageTwo({Key? key,}) : super(key: key);

  var h;
  var w;
  @override
  Widget build(BuildContext context) {

    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return  Container(
      height: h*1,
      width: w*1,
      child: Image.asset('assets/Images/e2_studio-p1_EN-rev.jpg',fit: BoxFit.fill,),
    );
  }
}

class PageThree extends StatelessWidget {

   PageThree({Key? key,}) : super(key: key);

  var h;
  var w;
  @override
  Widget build(BuildContext context) {

    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return  Container(
      height: h*1,
      width: w*1,
      child: Image.asset('assets/Images/timo-wielink-Uz_9UwAsMgs-unsplash.jpg',fit: BoxFit.fill,),
    );
  }
}
