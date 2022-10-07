import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Auth/Verify_otp.dart';
import 'Login.dart';

class verifyotp extends StatefulWidget {

  String mobile;   String username;      String email;  String otp;
  verifyotp( {required this.mobile,required this.email,required this.username,required this.otp});

  @override
  State<verifyotp> createState() => _verifyotpState();

}
class _verifyotpState extends State<verifyotp> {

  TextEditingController _enterotp =new  TextEditingController();
  final _formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print("====="+widget.mobile);

    return Scaffold(
      appBar: AppBar(
        title: Text("Enter OTP Acitvity", style: TextStyle(fontSize: 18),),
        backgroundColor: Colors.indigo,),

      body:

      SingleChildScrollView(

        child: Form(

          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Text("Sent the OTP to your mobile  " + widget.mobile),


              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 30),
                alignment: Alignment.center,
                child: TextFormField(
                  controller: _enterotp,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "Enter OTP",
                      labelText: "OTP Verification",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))
                  ),

                  validator: (value) {
                    if (value!.isEmpty) {
                      return "enter otp";
                    }else{
                    }
                    return null;
                  },
                  autofocus: false,
                ),
              ),

              Container(
                //  width:320,
                margin: EdgeInsets.only(top: 50),
                child: MaterialButton(

                  onPressed: () async {
                    if(_formkey.currentState!.validate()){

                      print(widget.mobile);
                      print(widget.otp);
                      print(widget.username);
                      print(widget.email);


                      EnterOtp(widget.mobile, _enterotp.text.toString(), widget.username, widget.email,).

                      then((value){
                        _enterotp.clear();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                      }).catchError((e){
                        print(e.toString());
                      });
                    }

                  },

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Verify OTP", style: TextStyle(color: Colors.white),),
                  color: Colors.indigo,),
              )

            ],
          ),
        ),
      ),



    );


  }


}








