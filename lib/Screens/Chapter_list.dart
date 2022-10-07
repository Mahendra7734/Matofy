import 'package:flutter/material.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import 'package:get/get.dart';
import 'package:flutter_html/flutter_html.dart';

import 'Course_Material.dart';
class Chapter_list extends StatefulWidget {
  //String course_id, subject_id;
 const Chapter_list({Key? key}) : super(key: key);

  @override
  State<Chapter_list> createState() => _Chapter_listState();
}

class _Chapter_listState extends State<Chapter_list> {
  var h;
  var w;
  // var url;
  // bool isloading=true;
   var Data=[];
   var baseurl;
   var item =Get.arguments;
   var course_ids,subject_ids;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    course_ids=item['course'].toString();
    subject_ids=item['subject'].toString();
    Chapter_list();

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
          title: Text("Chapter List",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
        ),
        body:Data==null?Center(child:CircularProgressIndicator()): Container(

            child:ListView.builder(
              itemCount: Data.length,
              itemBuilder: (context, index){
                var item = Data[index];
                //var path=item['image'].toString();


                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Container(
                          //     height: h*0.07,
                          //     width: w*0.2,
                          //     child: Image.network( '$baseurl/$path',)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: w*0.45,
                                  child: Text(item['chapter_title'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
                              SizedBox(
                                height: h*0.003,
                              ),
                              SizedBox(
                                  width: w*0.6,
                                  child:
                                  //Text(item['description'].toString(),style: TextStyle(color: BLACK_GREYCOLOR,fontWeight: FontWeight.bold),)),
                                Html(data: item['description'].toString(),))

                            ],
                          ),
                          // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),
                          SizedBox(
                            width: w*0.16,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              color: LIGHT_COLOR,
                              onPressed: (){
                                Get.to(()=>Course_Material(),arguments: item);
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Course(),));
                              },
                              child: Text(
                                "View",
                                textAlign: TextAlign.center,
                                style:  TextStyle(
                                    color: WHITE_COLOR,
                                    fontSize: textSizeSmall,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
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
            //         return ListView.builder(
            //           itemCount: snapshot.data!.data!.length,
            //           itemBuilder: (context, index){
            //             return Padding(
            //               padding: const EdgeInsets.all(8.0),
            //               child: Card(
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(20)
            //                 ),
            //                 child: Padding(
            //                   padding: const EdgeInsets.all(10.0),
            //                   child:Row(
            //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Container(
            //                           height: h*0.07,
            //                           width: w*0.2,
            //                           child: Image.network('https://rajabookingonline.com/fundapp/public/admin/uploads/subcategory'+snapshot.data!.data![index].image.toString())),
            //                       Column(
            //                         crossAxisAlignment: CrossAxisAlignment.start,
            //                         children: [
            //                           Container(
            //                               width: w*0.45,
            //                               child: Text(Data[0]['course_name'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
            //                           SizedBox(
            //                             height: h*0.003,
            //                           ),
            //                           Text("By : Teachers Name",style: TextStyle(color: BLACK_GREYCOLOR,fontWeight: FontWeight.bold),),
            //
            //                         ],
            //                       ),
            //                       // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),
            //                       SizedBox(
            //                         width: w*0.15,
            //                         child: FlatButton(
            //                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            //                           color: BLUE_COLOR,
            //                           onPressed: (){
            //                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Course()));
            //                           },
            //                           child: Text(
            //                             "View",
            //                             textAlign: TextAlign.center,
            //                             style:  TextStyle(
            //                                 color: WHITE_COLOR,
            //                                 fontSize: textSizeSmall,
            //                                 fontWeight: FontWeight.w700),
            //                           ),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //
            //
            //                 ),
            //               ),
            //             );
            //           },
            //
            //         );
            //       } else{
            //         return Center(
            //           child: Text("is loading",style: TextStyle(color: WHITE_COLOR,fontSize: textSizeXLarge),),
            //         );
            //       }
            //     }
            // )

        ),
      ),
    );
  }


  Chapter_list() async {
    var data={
      'course_id':course_ids,
      'subject_id':subject_ids
    };
    try {
      var res = await ApiProvider().postRequest(apiUrl: 'chapter-list', data: data);
      if (res['status'].toString() == '1') {
        setState(() {
          Data = res['Data'];
          baseurl = res['url'];

        });
        print(Data);
        print(baseurl);
        // toast(res['message'].toString(),Colors.green);
      } else {

      }
    } catch (e) {
      print(e.toString());
    }







  }




}
