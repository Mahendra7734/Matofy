import 'package:flutter/material.dart';

import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';

class Earn_Money extends StatefulWidget {
  const Earn_Money({Key? key}) : super(key: key);

  @override
  State<Earn_Money> createState() => _Earn_MoneyState();
}

class _Earn_MoneyState extends State<Earn_Money> {
  var h;
  var w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Earn Money",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
        actions: [
          IconButton(onPressed: (){

          }, icon: Icon(Icons.notification_important))
        ],
      ),
      body: Container(

        child:ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context , int Index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: h*0.15,
                  width: w*0.35,
                  decoration: BoxDecoration(
                     boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                    borderRadius: BorderRadius.circular(20),
                    color: WHITE_COLOR
                  ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h*0.1,
                      width: w*0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/Images/e2_studio-p1_EN-rev.jpg'),fit: BoxFit.cover
                        )
                      ),
                    ),
                    Text("Video title",style: TextStyle(color: BLUE_YCOLOR,fontWeight: FontWeight.bold,fontSize: textSizeSMedium),)
                  ],
                ),

              ),
                ),
                Container(
                  height: h*0.15,
                  width: w*0.35,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                      borderRadius: BorderRadius.circular(20),
                      color: WHITE_COLOR
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: h*0.1,
                          width: w*0.3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('assets/Images/e2_studio-p1_EN-rev.jpg'),fit: BoxFit.cover
                              )
                          ),
                        ),
                        Text("Video title",style: TextStyle(color: BLUE_YCOLOR,fontWeight: FontWeight.bold,fontSize: textSizeSMedium),)
                      ],
                    ),

                  ),
                ),
              ],
            ),
          );
        }) ,
      ),
    ));
  }
}
