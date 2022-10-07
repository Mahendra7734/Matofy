import 'package:flutter/material.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import '../Utils/DefaultButton.dart';
class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
  var h;
  var w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    // if (widget.sliderImages.isNotEmpty) {
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Help & Support",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: w*0.04,right: w*0.04,top: h*0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: WHITE_COLOR,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: BLACK_COLOR,blurRadius: 2)]

                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all( 10),
                        hintText: "Enter Subject"
                    ),
                  ),
                ),

SizedBox(
  height: h*0.07,
),
            Container(
              decoration: BoxDecoration(
                  color: WHITE_COLOR,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: BLACK_COLOR,blurRadius: 2)]

              ),

              child: TextFormField(
                maxLines: 7,
              scrollPadding: EdgeInsets.only(left: 20),

              //  minLines: 10,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all( 10),
                  hintText: "Enter Message"
                ),
              ),
            ),
              ],
            ),
            DefaultButton(
                width: w * 1,
                height: h * 0.06,
                color: WHITE_COLOR,
                text: "Submit",
                press: () {
                 // Raise_fund();
                },
                textcolor: BLACK_COLOR),          ],
        ),
      ),
    );
  }
}
