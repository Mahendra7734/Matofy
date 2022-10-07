import 'package:flutter/material.dart';

import 'COLORS/COLORS.dart';
import 'Fonts/Fonts.dart';
import 'Screens/Drawer/Drawer.dart';
import 'Screens/Fundraiser.dart';
import 'Screens/HomeScreen/Home_Screen.dart';
import 'Screens/Notification.dart';
import 'Screens/Profile.dart';
import 'Screens/Wallet/Wallet.dart';

class DEMOAPPP extends StatefulWidget {
  int currentindex ;
  DEMOAPPP({Key? key, required this.currentindex}) : super(key: key);

  @override
  State<DEMOAPPP> createState() => _DEMOAPPPState();
}

class _DEMOAPPPState extends State<DEMOAPPP> {
  int index = 0;

  int tap = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        drawer:  drawer(),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: LIGHT_COLOR,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;

                        if (tap == 1) {
                          tap--;
                        }
                        print(tap);
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.home,
                          color: index == 0 ? Colors.red : WHITE_COLOR,
                          size: 30,
                        ),
                        Text("Home",style: TextStyle(color: index==0?Colors.red:WHITE_COLOR),)
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;

                        if (tap == 1) {
                          tap--;
                        }
                        print(tap);
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: index == 1 ? Colors.red : WHITE_COLOR,
                          size: 30,
                        ),
                        Text("Person",style: TextStyle(color: index==1?Colors.red:WHITE_COLOR),)

                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 2;
                        if (tap == 1) {
                          tap--;
                        }
                        print(tap);
                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_balance_wallet_rounded,
                          color: index == 2 ? Colors.red : WHITE_COLOR,
                          size: 30,
                        ),
                        Text("Wallet",style: TextStyle(color: index==2?Colors.red:WHITE_COLOR),)

                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 3;
                      print(index);
                      if (tap == 1) {
                        tap--;
                      }
                      print(tap);
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.clean_hands,
                        color: index == 3 ? Colors.red : WHITE_COLOR,
                        size: 30,
                      ),
                      Text("Raise Fund",style: TextStyle(color: index==3?Colors.red:WHITE_COLOR),)

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: index==3?0:50,
          backgroundColor: LIGHT_COLOR,
          //centerTitle: true,
          leading:
          index==1?BackButton():
          IconButton(
            icon:  Icon(Icons.menu),
            onPressed: () =>
                _scaffoldKey.currentState?.openDrawer(),


          ),
          title:
          GestureDetector(
            // onTap: () {
            //   setState(() {
            //     if (index == 2 && tap == 0) {
            //       tap++;
            //       print(tap);
            //     }
            //
            //     print(tap);
            //   });
            // },
            child: Text(index==1? "PROFILE":index==2?"Wallet":"",style: TextStyle(fontSize: textSizeMedium),),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text(index==0?"Hi User":"", style: TextStyle(fontSize: textSizeMedium)),
            ),
            index==0?Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.person_add))
            ):index==2?GestureDetector(

              // onTap: () {
              //   setState(() {
              //     if (index == 2 && tap == 0) {
              //       tap++;
              //       print(tap);
              //     }
              //
              //     print(tap);
              //   });
              // },
              child: IconButton(onPressed: (){
                setState(() {
                  if (index == 2 && tap == 0) {
                    tap++;
                    print(tap);
                  }

                  print(tap);
                });
              }, icon: Icon(Icons.notification_important)),
            ):Container(),


          ],
        ),
        // body: index == 0
        //     ? Home_Screen()
        //     : index == 1
        //         ? Profile()
        //         : index == 2
        //             ? Container(
        //                 alignment: Alignment.center,
        //                 child: tap == 1 ? Notification1() : Wallet())
        //             : index == 3
        //                 ? Fundraiser()
        //                 : Container()
        // child: Text(tap==1?"BHIMSINGH \n (Main)":"MAHENDRA \n (Default)",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.purpleAccent),),)

        // :index==3?Fundraiser():Container()
        );
  }
}
