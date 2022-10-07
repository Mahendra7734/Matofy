import 'package:flutter/material.dart';
import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';
import 'OTT_PlanDetails.dart';
class OTT extends StatefulWidget {
  const OTT({Key? key}) : super(key: key);

  @override
  State<OTT> createState() => _OTTState();
}

class _OTTState extends State<OTT> {
  var h;
  var w;



  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: LIGHT_COLOR,
        appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("OTT",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
    ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: h*0.2,
              child: Image.asset('assets/Images/d6050c2b31cd0efe1b9df62335520a77.jpg',fit: BoxFit.fill,),
            ),
            Padding(
              padding:  EdgeInsets.only(top: h*0.03,left: 10,right: 10,bottom: 10),
              child: Container(
                height: h*1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: WHITE_COLOR

                  //boxShadow: [BoxShadow(color: WHITE_COLOR,blurRadius: 2)]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15,top: 10,bottom: 15),
                      child: Text("Select Your Plan",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                          itemCount: 20,
                          itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: (){
                              index==0?Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OTT_PlanDetails())):Container();

                            },
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        height:80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage('assets/Images/IMG_0579-983x1024.png')
                                        )
                                        ),

                                      ),
                                    ),
                                    SizedBox(
                                        width:w*0.6,
                                        child: Text("Choose Your Box: PREMIUM CHOCOLATE CARNIVAL BOX | Choose a Subscription Plan: One Time Purchase | Choose Payment Type: Pay At Once",style: TextStyle(color: BLACK_GREYCOLOR,fontWeight: FontWeight.bold),)),
                                    Icon(Icons.navigate_next)
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Divider(
                                    color: BLACK_COLOR,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );

                      }),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
