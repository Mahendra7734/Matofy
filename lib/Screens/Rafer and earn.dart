import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';

class Rafer_and_earn extends StatefulWidget {
  const Rafer_and_earn({Key? key}) : super(key: key);

  @override
  State<Rafer_and_earn> createState() => _Rafer_and_earnState();
}

class _Rafer_and_earnState extends State<Rafer_and_earn> {
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

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    final Uri facebook =
        Uri(scheme: 'https', host: 'www.facebook.com', path: 'headers/');
    final Uri whatsapp =
        Uri(scheme: 'https', host: 'www.whatsapp.com', path: 'headers/');

    return Scaffold(
      backgroundColor: WHITE_COLOR,
      // appBar: AppBar(
      //   backgroundColor: LIGHT_COLOR,
      //   //title: Text("Rafer and earn",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(left: w * 0.05, right: w * 0.05, top: h * 0.05),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: BLACK_GREYCOLOR),
                    color: WHITE_COLOR),
                child: Row(
                  children: [
                    Flexible(
                      flex: 7,
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "0248668668",
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: 85,
                        decoration: BoxDecoration(
                            border: Border.all(color: BLACK_GREYCOLOR),
                            borderRadius: BorderRadius.circular(4)),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Copy Url",
                              style: TextStyle(color: BLACK_GREYCOLOR),
                            )),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.07,
              ),
              Text(
                "Share Your Referral link",
                style: TextStyle(
                    fontSize: textSizeXLarge,
                    color: BLACK_COLOR,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              Text(
                "Share On Social Media",
                style: TextStyle(
                    fontSize: textSizeLarge,
                    color: BLACK_GREYCOLOR,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              InkWell(
                onTap: () {
                  _launched = _launchInBrowser(facebook);
                },
                child: Container(
                  height: h * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: BLUE_YCOLOR),
                  child: Padding(
                    padding: EdgeInsets.only(left: w * 0.22, right: w * 0.22),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: h * 0.04,
                          width: w * 0.07,
                          child: Image.asset(
                            'assets/Icons/facebook__5_-removebg-preview.png',
                            color: WHITE_COLOR,
                          ),
                        ),
                        SizedBox(
                          width: w * 0.03,
                        ),
                        Text(
                          "Share with facebook",
                          style: TextStyle(
                              color: WHITE_COLOR, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.04,
              ),
              InkWell(
                onTap: () {
                  _launched = _launchInBrowser(whatsapp);
                },
                child: Container(
                  height: h * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WHATSAPP_COLOR),
                  child: Padding(
                    padding: EdgeInsets.only(left: w * 0.22, right: w * 0.22),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: h * 0.04,
                          width: w * 0.07,
                          child: Image.asset(
                            'assets/Icons/whatsapp(2).png',
                          ),
                        ),
                        SizedBox(
                          width: w * 0.03,
                        ),
                        Text(
                          "Share with whatsapp",
                          style: TextStyle(
                              color: WHITE_COLOR, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.06,
              ),
              Text(
                "REFER A FRIEND",
                style: TextStyle(
                    fontSize: textSizeXLarge,
                    color: BLACK_COLOR,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h * 0.03,
              ),
              Text(
                "Get 50 Cash Back",
                style: TextStyle(
                    fontSize: textSizeLarge,
                    color: BLACK_GREYCOLOR,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
