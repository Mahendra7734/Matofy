import 'package:flutter/material.dart';
import '../../Api_provider.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import '../../Storage/storage.dart';
import 'package:url_launcher/url_launcher.dart';


class Customer_Profile extends StatefulWidget {
  const Customer_Profile({Key? key}) : super(key: key);

  @override
  State<Customer_Profile> createState() => _Customer_ProfileState();
}

class _Customer_ProfileState extends State<Customer_Profile> {
  var h;
  var w;

  //var Profile_data;
  // var Profile_url;
  var Profile_name;
  var Profile_id;
  var Profile_mobile;
  var Profile_email;
  var Reffer_ID;
 // var Suponcer_link;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ProfileData();
  }
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
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    final Uri insta = Uri(scheme: 'https', host: 'www.instagram.com', path: 'headers/');
    final Uri twiter = Uri(scheme: 'https', host: 'www.twitter.com', path: 'headers/');
    final Uri whatsapp = Uri(scheme: 'https', host: 'www.whatsapp.com', path: 'headers/');
    return Container(
      child: Column(
        children: [
          Text(
            "Customer Profile",
            style: TextStyle(
                fontSize: textSizeMedium,
                color: WHITE_COLOR,
                fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.all(10),
           // height: h * 0.35,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(10),
                color: WHITE_COLOR,
                boxShadow: [BoxShadow(blurRadius: 3, color: BLACK_GREYCOLOR)]),
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(color: BLACK_GREYCOLOR, blurRadius: 2)
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: WHITE_COLOR),
                          height: h * 0.1,
                          width: w * 0.2,
                          child: Image.asset('assets/Images/Master.png')),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Profile_name.toString(),
                              style: TextStyle(
                                  color: BLACK_COLOR,
                                  fontSize: textSizeXLarge,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Text(
                              Profile_id.toString(),
                              style: TextStyle(
                                  color: BLACK_GREYCOLOR,
                                  fontSize: textSizeNormal),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: w * 0.03,
                                ),
                                Text(
                                  Profile_mobile.toString(),
                                  style: TextStyle(
                                      color: BLACK_COLOR,
                                      fontSize: textSizeNormal),
                                )
                              ],
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: w * 0.03,
                                ),
                                SizedBox(
                                    width: w * 0.5,
                                    child: Text(
                                      Profile_email.toString(),
                                      style: TextStyle(
                                          color: BLACK_COLOR,
                                          fontSize: textSizeNormal),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Row(
                              children: [
                               Text("Reffer_ID: ",style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(
                                  width: w * 0.03,
                                ),
                                SizedBox(
                                    width: w * 0.3,
                                    child: Text(
                                      Reffer_ID.toString(),
                                      style: TextStyle(
                                          color: BLACK_COLOR,
                                          fontSize: textSizeNormal),
                                    ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    height: h * 0.03,
                    color: GREY_COLOR,
                    width: double.infinity,
                    child: Text(
                      "Call me for: Credit Card | Saving Account | Loans | Demat Accounts",
                      style: TextStyle(
                          color: BLACK_COLOR,
                          fontSize: textSizeSmall,
                          fontWeight: FontWeight.bold),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: h * 0.06,
                          width: w * 0.1,
                          child: GestureDetector(
                              onTap: () {
                                setState(() {
                                 // Suponcer_link().toString();
                                  _launched=_launchInBrowser(twiter);
                                });
                              },
                              child: Image.asset('assets/Icons/twitter.png'))),
                      GestureDetector(
                        onTap: (){
                          _launched=_launchInBrowser(insta);
                        },
                        child: SizedBox(
                            height: h * 0.06,
                            width: w * 0.1,
                            child: Image.asset('assets/Icons/instagram(1).png')),
                      ),
                      GestureDetector(
                        onTap: (){
                          _launched=_launchInBrowser(whatsapp);
                        },
                        child: SizedBox(
                            height: h * 0.06,
                            width: w * 0.1,
                            child: Image.asset('assets/Icons/whatsapp(2).png')),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
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
          Reffer_ID=res['ProfileData'][0]['reffer'];

         // Suponcer_link = res['Social_link'][0]['twitter'];
          // Profile_url = res['profile_url'];
        });
        print(Profile_name);
        print(Profile_id);
        print(Profile_mobile);
        print(Profile_email);
        print(Reffer_ID);

        // print(Profile_url);
        // toast(res['message'].toString(),Colors.green);
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }
}
