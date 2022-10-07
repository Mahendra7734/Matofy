import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:fluttertoast/fluttertoast.dart';
class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  var h;
  var w;

  //var url;

  var data = [];

  // var baseurl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FAQ_list();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: LIGHT_COLOR,
        appBar: AppBar(
          backgroundColor: LIGHT_COLOR,
          title: Text(
            "FAQ list",
            style: TextStyle(color: WHITE_COLOR, fontSize: textSizeMedium),
          ),
        ),
        body: Container(

            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                var item = data[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Title :  ",
                                      style: TextStyle(
                                          color: BLACK_COLOR,
                                          fontWeight: FontWeight.bold,
                                          fontSize: textSizemMedium)),
                                  Text(
                                    item['title'].toString(),
                                    style: TextStyle(
                                        color: BLACK_COLOR,),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Row(
                                children: [
                                  Text("Date :  ",
                                      style: TextStyle(
                                          color: BLACK_COLOR,
                                          fontWeight: FontWeight.bold,
                                          fontSize: textSizemMedium)),
                                  Text(
                                    item['date'].toString(),
                                    style: TextStyle(
                                      color: BLACK_COLOR,),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text("Description =  ",style: TextStyle(color: BLACK_COLOR,fontSize: textSizemMedium,fontWeight: FontWeight.bold),),
                              SizedBox(
                                  width: w*0.8,
                                  child: Html(data: item['description'].toString())),
                            ],
                          ),
                          // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),

                        ],
                      ),
                    ),
                  ),
                );
              },
            )

            // FutureBuilder<CourseList>(
            //     future: course_list(),
            //     builder: (context,snapshot){
            //       if(snapshot.hasData){
            //     return
            //       ListView.builder(
            //         itemCount: snapshot.data!.data!.length,
            //         itemBuilder: (context, index){
            //
            //           return Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: Card(
            //               shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(20)
            //               ),
            //               child: Padding(
            //                 padding: const EdgeInsets.all(10.0),
            //                 child:Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     Container(
            //                         height: h*0.07,
            //                         width: w*0.2,
            //                         child: Image.network('https://rajabookingonline.com/fundapp/public/admin/uploads/subcategory/'+snapshot.data!.data![index].image.toString())),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Container(
            //                             width: w*0.45,
            //                             child: Text(snapshot.data!.data![index].name.toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
            //                         SizedBox(
            //                           height: h*0.003,
            //                         ),
            //                         Text("By : Teachers Name",style: TextStyle(color: BLACK_GREYCOLOR,fontWeight: FontWeight.bold),),
            //
            //                       ],
            //                     ),
            //                     // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),
            //                     SizedBox(
            //                       width: w*0.15,
            //                       child: FlatButton(
            //                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            //                         color: BLUE_COLOR,
            //                         onPressed: (){
            //                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Course(course_id: '5',)));
            //                         },
            //                         child: Text(
            //                           "View",
            //                           textAlign: TextAlign.center,
            //                           style:  TextStyle(
            //                               color: WHITE_COLOR,
            //                               fontSize: textSizeSmall,
            //                               fontWeight: FontWeight.w700),
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //
            //
            //               ),
            //             ),
            //           );
            //         },
            //
            //       );
            //     //   ListView.builder(
            //     //     itemCount: snapshot.data!.data!.length,
            //     //     itemBuilder: (context, index){
            //     //
            //     //       return Padding(
            //     //         padding: const EdgeInsets.all(8.0),
            //     //         child: Card(
            //     //           shape: RoundedRectangleBorder(
            //     //               borderRadius: BorderRadius.circular(20)
            //     //           ),
            //     //           child: Padding(
            //     //             padding: const EdgeInsets.all(10.0),
            //     //             child:Row(
            //     //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     //               children: [
            //     //                 Container(
            //     //                     height: h*0.07,
            //     //                     width: w*0.2,
            //     //                     child: Image.network('https://rajabookingonline.com/fundapp/public/admin/uploads/subcategory/'+snapshot.data!.data![index].image.toString())),
            //     //                 Column(
            //     //                   crossAxisAlignment: CrossAxisAlignment.start,
            //     //                   children: [
            //     //                     Container(
            //     //                         width: w*0.45,
            //     //                         child: Text(snapshot.data!.data![index].name.toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
            //     //                     SizedBox(
            //     //                       height: h*0.003,
            //     //                     ),
            //     //                     Text("By : Teachers Name",style: TextStyle(color: BLACK_GREYCOLOR,fontWeight: FontWeight.bold),),
            //     //
            //     //                   ],
            //     //                 ),
            //     //                 // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),
            //     //                 SizedBox(
            //     //                   width: w*0.15,
            //     //                   child: FlatButton(
            //     //                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            //     //                     color: BLUE_COLOR,
            //     //                     onPressed: (){
            //     //                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Course(course_id: '5',)));
            //     //                     },
            //     //                     child: Text(
            //     //                       "View",
            //     //                       textAlign: TextAlign.center,
            //     //                       style:  TextStyle(
            //     //                           color: WHITE_COLOR,
            //     //                           fontSize: textSizeSmall,
            //     //                           fontWeight: FontWeight.w700),
            //     //                     ),
            //     //                   ),
            //     //                 ),
            //     //               ],
            //     //             ),
            //     //
            //     //
            //     //           ),
            //     //         ),
            //     //       );
            //     //     },
            //     //
            //     // );
            //   } else{
            //    return Center(
            //       child: Text("is loading",style: TextStyle(color: WHITE_COLOR,fontSize: textSizeXLarge),),
            //     );
            //   }
            // }
            // )

            ),
      ),
    );
  }

  FAQ_list() async {

    try {

      var res = await ApiProvider().postRequest(
        apiUrl: 'faq-list',

      );
      if (res['status'].toString() == '1') {
        print(res['message']);
        setState(() {
          data = res['Data'];
          //baseurl = res['url'];

        });
        Fluttertoast.showToast(
          msg: res["message"],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 12,
        );

        //print(baseurl);

      } else {
        print(res);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
