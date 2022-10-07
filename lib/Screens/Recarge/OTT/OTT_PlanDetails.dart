import 'package:flutter/material.dart';
import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';
import 'OTT_PlanDetails1.dart';
class OTT_PlanDetails extends StatefulWidget {
  const OTT_PlanDetails({Key? key}) : super(key: key);

  @override
  State<OTT_PlanDetails> createState() => _OTT_PlanDetailsState();
}

class _OTT_PlanDetailsState extends State<OTT_PlanDetails> {
  var h;
  var w;
  bool value = false;
  var tap;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("OTT Plan Details",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                //height: h*0.45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: WHITE_COLOR
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: h*0.3,
                        width: double.infinity,
                        child: Image.asset('assets/Images/IMG_0579-983x1024-removebg-preview.png')),
                    Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 10),
                        child: Text("Choose Your Box: PREMIUM CHOCOLATE CARNIVAL BOX | Choose a Subscription Plan: One Time Purchase | Chooose Payment Type: Pay At Once",style: TextStyle(fontSize: textSizeLarge),))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: WHITE_COLOR
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Whats in the Box?",style: TextStyle(fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,top: 8),
                        child: Text("Cranberry - 150 Gms x. Mango - 150 Gms x 1. Holi- 150 Gms x 1.Shipement : One Box Shipped Only Pnce",style: TextStyle(color: BLACK_GREYCOLOR),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: WHITE_COLOR
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: w*0.9,
                          child: Text("Select your plan",style: TextStyle(fontWeight: FontWeight.bold),)),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          width: w*0.5,
                          decoration: BoxDecoration(
                            border: Border.all(color: BLACK_GREYCOLOR),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: Row(
                            children: [
                              Checkbox(
                                tristate: true,
                                shape: CircleBorder(),
                                  value: value,
                                  side: BorderSide(color: BLACK_GREYCOLOR),

                                  activeColor: LIGHT_COLOR,

                                  onChanged: (val) {
                                    setState(() {
                                      value = val!;
                                      tap=value;
                                    });
                                  }),
                              Text("1450 for a month",style: TextStyle(fontWeight: FontWeight.bold,color: LIGHT_COLOR),)
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h*0.02,
            ),
            Container(
              width: w*1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
               color: tap==true?LIGHT_COLOR:Colors.white70
              ),
              child: MaterialButton(onPressed: (){
              tap==true?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OTT_PlanDetails1())):
                  Container();
              },child: Text("Continue",style: TextStyle(color: tap==true?WHITE_COLOR:BLACK_COLOR),),),
            )
          ],
        ),
      ),
    );
  }
}
