import 'package:flutter/material.dart';


import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
class Trending_Fundraiser extends StatefulWidget {
  const Trending_Fundraiser({Key? key}) : super(key: key);

  @override
  State<Trending_Fundraiser> createState() => _Trending_FundraiserState();
}

class _Trending_FundraiserState extends State<Trending_Fundraiser> {
  var h;
  var w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Text("Trending Fundraiser",style: TextStyle(fontSize: textSizeMedium,color: WHITE_COLOR,fontWeight: FontWeight.bold),),
          Container(
            margin: EdgeInsets.all(10),
            height: h*0.17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: WHITE_COLOR,
                boxShadow: [BoxShadow(blurRadius: 3,color: BLACK_GREYCOLOR)]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h*0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WHITE_COLOR,
                      boxShadow: [BoxShadow(blurRadius: 2,color: BLACK_GREYCOLOR)]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: SizedBox(
                              width: w*0.2,

                              child: Image.asset('assets/Images/e2_studio-p1_EN-rev.jpg')),
                        ),
                        Text("Lorem Ipsum text",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        Text("25000",style: TextStyle(color: GREEN_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        Text("25035 supporters",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),

                Container(
                  height: h*0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WHITE_COLOR,
                      boxShadow: [BoxShadow(blurRadius: 2,color: BLACK_GREYCOLOR)]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: SizedBox(
                              width: w*0.2,

                              child: Image.asset('assets/Images/e2_studio-p1_EN-rev.jpg')),
                        ),
                        Text("Lorem Ipsum text",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        Text("25000",style: TextStyle(color: GREEN_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        Text("25035 supporters",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),

                Container(
                  height: h*0.15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WHITE_COLOR,
                      boxShadow: [BoxShadow(blurRadius: 2,color: BLACK_GREYCOLOR)]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: SizedBox(
                              width: w*0.2,

                              child: Image.asset('assets/Images/e2_studio-p1_EN-rev.jpg')),
                        ),
                        Text("Lorem Ipsum text",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        Text("25000",style: TextStyle(color: GREEN_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        Text("25035 supporters",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}
