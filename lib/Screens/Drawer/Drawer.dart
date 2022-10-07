import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Api_provider.dart';
import '../../Auth/RaiseFund_list.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import '../../Storage/storage.dart';
import '../About_us.dart';
import '../BottomApp/BottomAppBar.dart';
import '../Earn with system.dart';
import '../FAQ.dart';
import '../Login.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

import '../Privacy_policy.dart';
import '../Raisefund_list.dart';
import '../Support.dart';
import '../Terms_and_condition.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  var box=GetStorage();
  var h;
  var w;
  Future<void>? _launched;
  bool value = false;
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
  var Profile_name;
  var Profile_id;
  var Profile_mobile;
  var Profile_email;
  // var Suponcer_link;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ProfileData();
  }
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    // appBar: AppBar(title: Text(""),),
    final Uri facebook = Uri(scheme: 'https', host: 'www.facebook.com', path: 'headers/');
    final Uri insta = Uri(scheme: 'https', host: 'www.instagram.com', path: 'headers/');
    final Uri twiter = Uri(scheme: 'https', host: 'www.twitter.com', path: 'headers/');
    final Uri whatsapp = Uri(scheme: 'https', host: 'www.whatsapp.com', path: 'headers/');
    final Uri telegram = Uri(scheme: 'https', host: 'telegram.org', path: 'headers/');

    return Drawer(
        child: Container(
          color: LIGHT_COLOR,
      // decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: AssetImage("assets/Images/bluebackground.jpg"),
      //         fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/Images/e2_studio-p1_EN-rev.jpg',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: w * .03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Profile_name.toString(),
                        style: TextStyle(
                            color: WHITE_COLOR,
                            fontWeight: FontWeight.bold,
                            fontSize: textSizeMedium),
                      ),
                      Text(
                        Profile_id.toString(),
                        style: TextStyle(
                            color: WHITE_COLOR, fontSize: textSizeMedium),
                      )
                    ],
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomAppbar(currentindex: 1,)));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "My Profile",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Raisefund_list()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.clean_hands_sharp,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Raise Fund",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Earn_with_system()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.clean_hands_outlined,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Earn with system",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomAppbar(currentindex: 2,)));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.wallet_giftcard_outlined,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Wallet",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomAppbar(currentindex: 3,)));

              },
              child: Row(
                children: [
                  Icon(
                    Icons.wallet_membership_outlined,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Rafer and Earn",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomAppbar1(currentindex: 0,)));
                setState(() {
                  clicked=1;
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomAppbar(currentindex: 0,)));
                   print(clicked);

                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.ad_units_sharp,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "E- education",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>About_us()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.question_mark_rounded,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "About Us",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Support()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.support,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Support",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Privacy_policy()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.book_online_outlined,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Terms_and_condition()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.add_business_sharp,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Terms and condition",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FAQ()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "FAQ",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){
                box.erase();
                //Get.offAll(()=>Login());
                showAlertDialog(context);
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: WHITE_COLOR,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Text(
                    "Log Out",
                    style: TextStyle(
                        color: WHITE_COLOR, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    _launched = _launchInBrowser(facebook);
                  },
                  child: SizedBox(
                      height: h * 0.04,
                      child: Image.asset('assets/Icons/facebook.png')),
                ),
                InkWell(
                  onTap: (){
                    _launched = _launchInBrowser(insta);
                  },
                  child: SizedBox(
                      height: h * 0.04,
                      child: Image.asset('assets/Icons/instagram(1).png')),
                ),
                InkWell(
                  onTap: (){
                    _launched = _launchInBrowser(twiter);
                  },
                  child: SizedBox(
                      height: h * 0.04,
                      child: Image.asset('assets/Icons/twitter.png')),
                ),
                InkWell(
                  onTap: (){
                    _launched = _launchInBrowser(whatsapp);
                  },
                  child: SizedBox(
                      height: h * 0.04,
                      child: Image.asset('assets/Icons/whatsapp(2).png')),
                ),
                InkWell(
                  onTap: (){
                    _launched = _launchInBrowser(telegram);
                  },
                  child: SizedBox(
                      height: h * 0.04,
                      child: Image.asset('assets/Icons/telegram.png')),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
  ProfileData() async {
    var data = {'user_id': id()};
    try {
      var res =
      await ApiProvider().postRequest(apiUrl: 'home-slider', data: data);
      if (res['status'].toString() == '1') {
        setState(() {
          Profile_name = res['ProfileData'][0]['username'];
          Profile_id = res['ProfileData'][0]['Id_No'];
          Profile_mobile = res['ProfileData'][0]['mobile'];
          Profile_email = res['ProfileData'][0]['email'];

          // Suponcer_link = res['Social_link'][0]['twitter'];
          // Profile_url = res['profile_url'];
        });
        print(Profile_name);
        print(Profile_id);
        print(Profile_mobile);
        print(Profile_email);
        // print(Suponcer_link);

        // print(Profile_url);
        // toast(res['message'].toString(),Colors.green);
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }
  showAlertDialog(BuildContext context) {
    //set up the button
    Widget okButton = Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: (){
          Get.offAll(()=>Login());
        }, child: Text("Yes")),
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("No"))
      ],
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(

      title: Container(
          alignment: Alignment.center,
          child: Text("Are you sure?")),
      content: Text("Are you sure you went to logout of the application",textAlign: TextAlign.center,),
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
