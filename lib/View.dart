import 'package:flutter/material.dart';

import 'Auth/subject_details.dart';
class view extends StatefulWidget {
  String subject_id;
   view({Key? key,required this.subject_id}) : super(key: key);

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  bool isloding = true;
  var Data ;
  // void initState() {
  //   subject_details(widget.subject_id).then((value) {
  //
  //     setState((){
  //       isloding =false;
  //       Data = value;
  //     });
  //
  //     print("databnbnb"+ Data.toString());
  //   }).catchError((e){
  //
  //   });
  //   // TODO: implement initState
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Data==null? Center(child: CircularProgressIndicator()):
      Center(
        child: Container(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 7,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: new BorderSide(color: Colors.blue, width: 0.5),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Name : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                Container(
                                  width: 300,
                                    child: Text(
                                      Data[0]['name'].toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
              Container(
              margin: EdgeInsets.only(left: 0),
          child: Row(
            children: [
              Container(
                  child: Text(
                    "Amount : ",
                    style: TextStyle(
                        color: Colors.black, fontSize: 17),
                  )),
              Container(
                child: Text(Data[0]['category_id'].toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17)),
              ),
            ],
          ),
        ),
                          Container(
                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      " : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                Container(
                                  child: Text(Data[0]['date'].toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17)),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: [
                                Container(
                                    child: Text(
                                      "Description : ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                Container(
                                  child: Row(
                                    children: [
                                      Text(Data[0]['description'].toString(),
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 17)),
                                      Container(
                                          height: 15,
                                          width: 15,
                                          child: Image.network(
                                            Data[0]['image'].toString(),
                                          )),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Payment Method",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Chaeque",
                                    style: TextStyle(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Due Salary",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "6000",
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      Container(
                                          height: 12,
                                          width: 12,
                                          child: Image.asset(
                                            'assets/images/rupee.png',
                                            color: Colors.red,
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 30,
                            child: Column(
                              children: [
                                Container(
                                  child: Text(
                                    "Paid Salary Month",
                                    style:
                                    TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "October",
                                    style: TextStyle(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
