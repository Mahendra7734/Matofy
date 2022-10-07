import 'package:Motofy/Api_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Auth/Login_Auth.dart';
import '../COLORS/COLORS.dart';
import '../Utils/DefaultButton.dart';
import 'BottomApp/BottomAppBar.dart';
import 'Register.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _mobileController1 = TextEditingController();
  TextEditingController _passwordController1 = TextEditingController();

  var h;
  var w;
  final _formKey = GlobalKey<FormState>();
  bool _isHidden = true;
  bool _value3 = false;

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
                  // alignment: Alignment.topCenter,
                  // margin: EdgeInsets.only(top: h*0.1),
                  child: Text(
                "Fund App",
                style: TextStyle(
                    color: WHITE_COLOR,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              )),
              SingleChildScrollView(
                child: Padding(
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
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    controller: _mobileController1,
                                    cursorColor: BLACK_GREYCOLOR,
                                    decoration: InputDecoration(
                                      hintText: "Enter email/Mobile number",
                                      hintStyle: TextStyle(
                                          fontSize: 16, color: BLACK_GREYCOLOR),
                                      focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide.none),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide.none),
                                      isDense: false,
                                      suffixIcon: Icon(
                                        Icons.add_business,
                                        color: WHITE_COLOR,
                                      ),
                                      prefixIcon: Icon(
                                        Icons.phone_android,
                                        color: BLACK_COLOR,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter valid Mobile/Email Address.";
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
                                    controller: _passwordController1,
                                    cursorColor: BLACK_GREYCOLOR,
                                    decoration: InputDecoration(
                                      hintText: "Please Enter password",
                                      hintStyle: TextStyle(
                                          fontSize: 16, color: BLACK_GREYCOLOR),
                                      focusedBorder: OutlineInputBorder(
                                          // borderRadius: BorderRadius.circular(8),
                                          borderSide: BorderSide.none),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                                      isDense: true,
                                      prefixIcon: Icon(
                                        Icons.lock,
                                        color: BLACK_COLOR,
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter valid Password .";
                                      } else {}
                                      return null;
                                    },
                                    autofocus: false,
                                    obscureText: _isHidden,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 20),
                              child: DefaultButton(
                                  width: w * 1,
                                  height: h * 0.06,
                                  color: LIGHT_COLOR,
                                  text: "LOG IN",
                                  press: () async {

                                    if (_formKey.currentState!.validate()) {
                                      login1(
                                              _mobileController1.text
                                                  .toString(),
                                              _passwordController1.text
                                                  .toString())
                                          .then((value) {
                                        print(value);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    BottomAppbar(
                                                      currentindex: 0,
                                                    )));
                                      }).catchError((e) {});
                                    } //login(_emailController.text.toString(), _passwordController.text.toString());

                                  },
                                  textcolor: WHITE_COLOR),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, top: 15),
                              child: Row(children: [
                                SizedBox(
                                  height: h * 0.040,
                                  width: w * 0.05,
                                  child: Checkbox(
                                    side: BorderSide(color: LIGHT_COLOR),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                    activeColor: LIGHT_COLOR,
                                    checkColor: Colors.white,
                                    value: _value3,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _value3 = value!;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: w * 0.015,
                                ),
                                Text("I Accept to the Terms & PrivacyPolicy"),
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 20),
                              child: DefaultButton(
                                  width: w * 1,
                                  height: h * 0.06,
                                  color: LIGHT_COLOR,
                                  text: "Create an account",
                                  press: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  },
                                  textcolor: WHITE_COLOR),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 8.0, top: 10),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password",
                                    style: TextStyle(
                                        color: BLACK_COLOR, fontSize: 18),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
