import 'package:flutter/material.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import '../Drawer/Drawer.dart';
import '../E_education.dart';
import '../HomeScreen/Home_Screen.dart';
import '../Notification.dart';
import '../Profile.dart';
import '../Rafer and earn.dart';
import '../Wallet/Wallet.dart';

int clicked = 0;
//String course_id="";

class BottomAppbar extends StatefulWidget {
  int currentindex;

  BottomAppbar({Key? key, required this.currentindex}) : super(key: key);

  @override
  State<BottomAppbar> createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  int index = 0;

  int tap = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index=widget.currentindex;
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: drawer(),
        appBar: AppBar(

          //toolbarHeight: index == 3 ? 0 : 50,
          backgroundColor: LIGHT_COLOR,
          //centerTitle: true,
          leading: clicked == 1
              ? BackButton(
            onPressed: (){
              setState(() {
                clicked--;
              });
            },
          )
              : IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          title: GestureDetector(
            child: Text(
              clicked==1?"E-Education":
              index == 1
                  ? "PROFILE"
                  : index == 2
                  ? "Wallet"
                  : index==3
                  ?"Refer & Earn"
                  :"",
              style: TextStyle(fontSize: textSizeMedium),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Text(clicked == 1 ? "" : index==0?"Hi User":"",
                  style: TextStyle(fontSize: textSizeMedium)),
            ),
            index == 0
                ? Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.person_add))):clicked==1         ? Padding(
                padding: const EdgeInsets.only(right: 10),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.notification_important)))
                : index == 2
                ? GestureDetector(
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (index == 2 && tap == 0) {
                        tap++;
                        print(tap);
                      }

                      print(tap);
                    });
                  },
                  icon: Icon(Icons.notification_important)),
            )
                : Container(),
          ],
        ),
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
                          color: index == 0 ? BLACK_COLOR : WHITE_COLOR,
                          size: 30,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: index == 0 ? BLACK_COLOR : WHITE_COLOR),
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {

                      setState(() {
                        index = 1;

                        if (clicked == 1) {
                          clicked--;
                          print(clicked);
                        }if(tap==1){
                          tap--;
                        }
                        print(tap);

                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          color: index == 1 ? BLACK_COLOR : WHITE_COLOR,
                          size: 30,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: index == 1 ? BLACK_COLOR : WHITE_COLOR),
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      setState(() {
                      //  clicked = 1;
                        index=2;
                        if (clicked == 1) {
                          clicked--;
                          print(clicked);
                        }

                        if(tap==1){
                          tap--;
                        }
                        print(tap);

                      });
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.account_balance_wallet_rounded,
                          color: index == 2 ? BLACK_COLOR : WHITE_COLOR,
                          size: 30,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                              color: index == 2 ? BLACK_COLOR : WHITE_COLOR),
                        )
                      ],
                    )),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 3;

                      if (clicked == 1) {
                        clicked--;
                        print(clicked);
                      }if(tap==1){
                        tap--;
                      }
                      print(tap);

                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.clean_hands,
                        color: index == 3 ? BLACK_COLOR : WHITE_COLOR,
                        size: 30,
                      ),
                      Text(
                        "Rafer and earn",
                        style: TextStyle(
                            color: index == 3 ? BLACK_COLOR : WHITE_COLOR),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),

        body: index == 0
            ? Container(child: clicked==1?E_education(e_education:'5'):Home_Screen())
            : index == 1
                ? UploadProfileImage()
               : index == 2
                    ? Container(
                        alignment: Alignment.center,
                        child: tap == 1 ? Notification1() : Wallet())
                    : index == 3
                        ? Rafer_and_earn()
                        : Container()

    );
    //  int _index = 0;
    // @override
    //  void initState() {
    //    // TODO: implement initState
    //    super.initState();
    //    _index=widget.currentindex;
    //
    //
    //  }
    //
    //
    //
    //  final GlobalKey<ScaffoldState> _scaffoldKey = new  GlobalKey<ScaffoldState>();
    //  final _pageoption = [Home_Screen(), Profile(), Wallet(), Fundraiser()];
    //  @override
    //  Widget build(BuildContext context) {
    //    return Scaffold(
    //    key: _scaffoldKey,
    //    drawer:  drawer(),
    //      appBar: AppBar(
    //             toolbarHeight: _index==3?0:50,
    //        backgroundColor: BLUE_COLOR,
    //
    //
    //
    //        leading:
    //            _index==1?BackButton():
    //        IconButton(
    //              icon:  Icon(Icons.menu),
    //              onPressed: () =>
    //                _scaffoldKey.currentState?.openDrawer(),
    //
    //
    //                    ),
    //
    //        title:
    //  Text(     _index==1? "PROFILE":_index==2?"Wallet":"",style: TextStyle(fontSize: textSizeMedium),),
    //        actions: [
    //
    //
    //          Padding(
    //            padding: const EdgeInsets.only(top: 18),
    //            child:Text(
    //              _index==1?"":_index==2?"":  "HI USER",
    //              style: TextStyle(fontSize: textSizeMedium),),
    //          ),
    //
    //          _index==1?Container():_index==2?Padding(
    //            padding: const EdgeInsets.only(right: 8.0),
    //            child: IconButton(onPressed: (){
    //              setState((){
    //
    //                index=2;
    //                print(index);
    //
    //              });
    //
    //               // tap = true;
    //               // Navigator.push(context, MaterialPageRoute(builder: (context)=>Notification1()));
    //            }, icon: Icon(Icons.notification_important_sharp)),
    //          ):
    //          IconButton(onPressed: (){}, icon: Icon(Icons.person_add)),
    //
    //
    //
    //
    //        ],
    //      ),
    //        // drawer: drawer(),
    //      body: _pageoption[_index],
    //      bottomNavigationBar: BottomNavigationBar(
    //        backgroundColor:BLUE_COLOR,
    //        type: BottomNavigationBarType.fixed,
    //        selectedItemColor: Colors.red,
    //        iconSize: 15,
    //        selectedFontSize: 12,
    //        selectedLabelStyle:TextStyle(fontWeight: FontWeight.bold),
    //        unselectedLabelStyle:TextStyle(fontWeight: FontWeight.bold) ,
    //        unselectedFontSize: 12,
    //        unselectedItemColor: WHITE_COLOR,
    //        //selectedIconTheme: IconThemeData(color: BLACK_COLOR),
    //
    //        elevation: 5,
    //        currentIndex: _index,
    //        onTap: (index) {
    //          setState(() {
    //            _index = index;
    //          });
    //        },
    //        items: [
    //          BottomNavigationBarItem(
    //            backgroundColor: WHITE_COLOR,
    //            icon:
    //          Padding(
    //            padding: const EdgeInsets.all(8),
    //            child: Icon(Icons.home,
    //              color: _index == 0
    //                  ? Colors.red
    //                  : WHITE_COLOR,
    //            )
    //
    //          ),label: 'Home',),
    //          BottomNavigationBarItem(
    //              icon: Padding(
    //                padding: const EdgeInsets.all(8),
    //                child: Icon(Icons.person,
    //                  color:_index==1?Colors.red:WHITE_COLOR
    //
    //                )
    //              ),label: 'Profile'),
    //          BottomNavigationBarItem(icon:
    //          Padding(
    //            padding:  EdgeInsets.all(8),
    //            child: Icon(Icons.wallet_giftcard,
    //              color: _index == 2
    //                  ? Colors.red
    //                  : WHITE_COLOR,
    //            )
    //          ),label: 'Wallet'),
    //
    //          BottomNavigationBarItem(icon:
    //          Padding(
    //            padding: const EdgeInsets.all(8),
    //            child: Icon(Icons.clean_hands,
    //            color: _index==3?Colors.red:
    //            WHITE_COLOR,
    //            )
    //          ),label: 'Raise Fund',)
    //        ],
    //
    //      ),
    //    );
  }
}
