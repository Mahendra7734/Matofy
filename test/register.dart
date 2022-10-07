

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'otp.dart';
import 'registerapi.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  TextEditingController _username = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Registration"),centerTitle: true,),
        backgroundColor: Colors.white,
        body: Form(
          key: _formkey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.white,
                      height: 55,
                      // decoration: BoxDecoration(color: Colors.white),
                      width: 330,
                      child: TextFormField(
                        controller: _username,
                        // keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            labelText: "User Name",
                            prefixIcon: Icon(Icons.person)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ""
                                "plz enter name";
                          }else {

                          }
                        },

                      )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.white,
                    height: 55,
                    // decoration: BoxDecoration(color: Colors.white),
                    width: 330,
                    child: TextFormField(
                      controller: _mobile,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          // hintText: "Enter Mobile ",
                          labelText: "Enter Mobile NUmber",
                          prefixIcon: Icon(Icons.phone_android)),

                      validator: (value) {
                        if (value!.isEmpty) {
                          return ""
                              "plz enter number";
                        }else {

                        }
                      },
                    ),
                  ),
                  Container(
                    height: 58,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(color: Colors.white),
                    width: 330,
                    child: TextFormField(
                      controller: _email,
                      // keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Email id",
                          prefixIcon: Icon(Icons.email_outlined)),

                      validator: (value) {
                        if (value!.isEmpty) {
                          return ""
                              "plz enter email";
                        }else {

                        }
                      },
                    ),
                  ),
                  Container(
                    height: 58,
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(color: Colors.white),
                    width: 330,
                    child: TextFormField(
                      controller: _password,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          labelText: "Enter Password",
                          prefixIcon: Icon(Icons.local_activity)),

                      validator: (value) {
                        if (value!.isEmpty) {
                          return ""
                              "plz enter password";
                        }else {

                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                      color: Colors.indigo,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.white70)),
                      elevation: 2,
                      onPressed: ()  async {
                        if (_formkey.currentState!.validate()) {
                          RagistrationApi(
                              _username.text.toString(), _mobile.text.toString(), _email.text.toString(),
                              _password.text.toString()).then((value) {
                            print(value);


                            Navigator.push(context, MaterialPageRoute(builder: (
                                context) =>
                                enetrotp(mobile: _mobile.text.toString(),
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

                      child: Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
