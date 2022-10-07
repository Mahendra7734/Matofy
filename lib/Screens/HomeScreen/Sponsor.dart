

import 'package:flutter/material.dart';
import '../../Api_provider.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import 'package:url_launcher/url_launcher.dart';


class Sponsor_link extends StatefulWidget {
  const Sponsor_link({Key? key}) : super(key: key);

  @override
  State<Sponsor_link> createState() => _Sponsor_linkState();
}

class _Sponsor_linkState extends State<Sponsor_link> {
  var h;
  var w;
  var Data=[];
  var baseurl;
  //var item =Get.arguments;
  var ids;


  // @override
  // void initState() {
  //   super.initState();
  //   chapter_list(widget.course_id, widget.subject_id).then((value) => {
  //     setState(() {
  //       isloading=false;
  //       Data=value;
  //     })
  //   }).catchError((e){
  //
  //   });
  //
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //ids=item['id'].toString();
    Sponser_link();

  }
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h*0.17,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: WHITE_COLOR,
            boxShadow: [BoxShadow(blurRadius: 3,color: BLACK_GREYCOLOR)]
        ),
        child: Data==null? Center(child: CircularProgressIndicator()):ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10),
            itemCount: Data.length,
            itemBuilder: (context, index){
              var item = Data[index];
              var path=item['image'].toString();


              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: h*0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WHITE_COLOR,
                      boxShadow: [BoxShadow(blurRadius: 2,color: BLACK_GREYCOLOR)]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: SizedBox(
                              width: w*0.15,
                              height: h*0.06,

                              child: Image.network('$baseurl/$path')),
                        ),
                        Text(item['name'].toString(),style: TextStyle(color: BLACK_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        //Text("25000",style: TextStyle(color: GREEN_COLOR,fontSize: textSizeSmall,fontWeight: FontWeight.bold),),
                        SizedBox(
                            width: w*0.25,
                            child: InkWell(
                              onTap: () => launchUrl(Uri.parse(item['link'].toString())),
                              child: Text(
                                item['link'].toString(),
                                style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue,fontSize: textSizeYSmall),
                              ),
                            )

                            //Text(item['link'].toString(),style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold),)),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },

          ),
      ),
    );


  }

  Sponser_link() async {
    try {
      var res = await ApiProvider().postRequest(
        apiUrl: 'sponsers-list',
      );
      if (res['status'].toString() == '1') {
        setState(() {
          Data = res['Data'];
          baseurl = res['url'];
        });
        print(Data);
        //print(baseurl);
        // toast(res['message'].toString(),Colors.green);
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }

  }

