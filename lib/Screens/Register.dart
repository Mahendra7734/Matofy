import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Auth/Register.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import '../Utils/DefaultButton.dart';
import 'Login.dart';
import 'Verify_otp.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var h;
  var w;
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  TextEditingController _username = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _rafer_by = TextEditingController();

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      body: SingleChildScrollView(
        child: Container(
          height: h * 1,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  child: Text(
                "Register",
                style: TextStyle(
                    color: WHITE_COLOR,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: SizedBox(
                 // height: h * 0.55,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 20),
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 57,
                                child: TextFormField(
                                  controller: _username,
                                  cursorColor: BLACK_GREYCOLOR,
                                  decoration: InputDecoration(
                                    hintText: "Name",
                                    hintStyle: TextStyle(
                                        fontSize: 16, color: BLACK_GREYCOLOR),
                                    focusedBorder: OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    suffixIcon: Icon(
                                      Icons.add_business,
                                      color: WHITE_COLOR,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: BLACK_COLOR,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Name is Empty";
                                    } else {}
                                    return null;
                                  },
                                  autofocus: false,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 20),
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 57,
                                child: TextFormField(
                                  controller: _email,
                                  cursorColor: BLACK_GREYCOLOR,
                                  decoration: InputDecoration(
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(
                                        fontSize: 16, color: BLACK_GREYCOLOR),
                                    focusedBorder: OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    suffixIcon: Icon(
                                      Icons.remove_red_eye_sharp,
                                      color: WHITE_COLOR,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: BLACK_COLOR,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email is Empty";
                                    } else {}
                                    return null;
                                  },
                                  autofocus: false,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 20),
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 57,
                                child: TextFormField(
                                  controller: _mobile,
                                  cursorColor: BLACK_GREYCOLOR,
                                  decoration: InputDecoration(
                                    hintText: "Mobile Number",
                                      counterStyle: TextStyle(
                                        height: double.minPositive,
                                      ),
                                      counterText: "",
                                    hintStyle: TextStyle(
                                        fontSize: 16, color: BLACK_GREYCOLOR),
                                    focusedBorder: OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    suffixIcon: Icon(
                                      Icons.phone_android,
                                      color: WHITE_COLOR,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.phone_android,
                                      color: BLACK_COLOR,
                                    ),
                                  ),
                                  maxLength: 10,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Mobile is Empty";
                                    } else {}
                                    return null;
                                  },
                                  autofocus: false,
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 20),
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 57,
                                child: TextFormField(
                                  controller: _password,
                                  cursorColor: BLACK_GREYCOLOR,
                                  decoration: InputDecoration(
                                    hintText: "Create password",
                                    hintStyle: TextStyle(
                                        fontSize: 16, color: BLACK_GREYCOLOR),
                                    focusedBorder: OutlineInputBorder(
                                        // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    suffix: InkWell(
                                      onTap: _togglePasswordView,
                                      child: Icon(
                                        _isHidden
                                            ?

                                            /// CHeck Show & Hide.
                                            Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: BLACK_COLOR,
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Create password is Empty";
                                    } else {}
                                    return null;
                                  },
                                  autofocus: false,
                                ),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 20),
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                height: 57,
                                child: TextFormField(
                                  controller: _rafer_by,
                                  cursorColor: BLACK_GREYCOLOR,
                                  decoration: InputDecoration(
                                    hintText: "reffer_by",
                                    hintStyle: TextStyle(
                                        fontSize: 16, color: BLACK_GREYCOLOR),
                                    focusedBorder: OutlineInputBorder(
                                      // borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide.none),

                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(13),
                                      child: Image.asset(
                                        'assets/Icons/salary.png',
                                        color: BLACK_COLOR,

                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please Enter Rafer_id";
                                    } else {}
                                    return null;
                                   },
                                  autofocus: false,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            child: DefaultButton(
                                width: w * 1,
                                height: h * 0.06,
                                color: LIGHT_COLOR,
                                text: "SIGN UP",
                                press: () async {
                                  // if(_formKey.currentState!.validate()){
                                  //   ragister(
                                  //       _nameController.text.toString(),
                                  //       _emailController.text.toString(),
                                  //       _numberController.text.toString(),
                                  //       _createPasswordController.text.toString()).then((value){
                                  //         print(value);
                                  //         Navigator.push(context, MaterialPageRoute(builder: (context)=>verifyotp(Mobilenumber: _numberController.text.toString())));
                                  //   }).catchError((e){
                                  //
                                  //   }
                                  //   );
                                  // }

                                  if (_formKey.currentState!.validate()) {
                                    RagistrationApi(
                                        _username.text.toString(), _mobile.text.toString(), _email.text.toString(),
                                        _password.text.toString(),_rafer_by.text.toString()).then((value) {
                                      print(value);


                                      Navigator.push(context, MaterialPageRoute(builder: (
                                          context) =>
                                          verifyotp(mobile: _mobile.text.toString(),
                                              username: _username.text.toString(),
                                              otp: value['otp'].toString(),
                                              email: _email.text.toString())
                                      )
                                      );
                                    }).catchError((e){
                                      print(e.toString());
                                    });
                                  }
                                },
                                textcolor: WHITE_COLOR),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text(
                              "Already have an account",
                              style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: textSizeSMedium),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
