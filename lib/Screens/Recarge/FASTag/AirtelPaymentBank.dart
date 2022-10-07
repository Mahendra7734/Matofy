import 'package:flutter/material.dart';
import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';
import 'FasTag.dart';
class AirtelPAymentBank extends StatefulWidget {
  const AirtelPAymentBank({Key? key}) : super(key: key);

  @override
  State<AirtelPAymentBank> createState() => _AirtelPAymentBankState();
}

class _AirtelPAymentBankState extends State<AirtelPAymentBank> {
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
        title: Text("FASTag Recharge Payment",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              //height: h*0.45,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7), color: WHITE_COLOR),
              child: Form(
                //key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(
                        height: h * 0.01,
                      ),
                      // Text(
                      //   "Vehicle Registration Number / Wallet Number",
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      TextFormField(

                        //  maxLengthEnforcement: MaxLengthEnforcement.none,
                        decoration: InputDecoration(
                            //hintText: "Vehicle Registration Number / Wallet Number",
                            labelText: 'Vehicle Registration Number / Wallet Number',
                            labelStyle: TextStyle(color: LIGHT_COLOR),

                            // counterStyle: TextStyle(
                            //   height: double.minPositive,
                            // ),
                            //counterText: ""
                        ),
                       // keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Text(
                        "Please Enter Vehicle Registration Number / Wallet Number",
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


          SizedBox(
            height: h * 0.15,
          ),
          Container(
            width: w * 1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:  Colors.white70),
            child: MaterialButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text(
                "Continue",
                style:
                TextStyle(color: BLACK_COLOR),
              ),
            ),
          )
        ],
      ),
    );
  }
  showAlertDialog(BuildContext context) {
    //set up the button
    Widget okButton = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(onPressed: (){
          //Get.offAll(()=>Login());
          Navigator.pop(context);
        }, child: Text("KNOW MORE")),
        Text("|"),
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FasTag()));
        }, child: Text("GOT IT"))
      ],
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Container(
          alignment: Alignment.centerLeft,
          child: Text("An Error Occured.")),
      content: Text("Your request failed due to a technical issue. Please try after some time.",textAlign: TextAlign.start,),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );


  }
}

