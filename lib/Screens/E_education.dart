import 'package:flutter/material.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import 'BottomApp/BottomAppBar.dart';
import 'Subject.dart';
import 'package:get/get.dart';
class E_education extends StatefulWidget {
  String e_education;
   E_education({Key? key,required this.e_education}) : super(key: key);

  @override
  State<E_education> createState() => _E_educationState();
}

class _E_educationState extends State<E_education> {
  var h;
  var w;
  //var url;

  var data =[];
  var baseurl;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CourseList();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: LIGHT_COLOR,
        body: data==null? Center(child: CircularProgressIndicator()):Container(

           child:
           ListView.builder(
             itemCount: data.length,
             itemBuilder: (context, index){
               var item = data[index];
var path=item['image'].toString();


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
                         Container(
                             height: h*0.07,
                             width: w*0.2,
                             child: Image.network( '$baseurl/$path',)),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                                 width: w*0.45,
                                 child: Text(item['name'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
                             SizedBox(
                               height: h*0.003,
                             ),
                             Text("By : Teachers Name",style: TextStyle(color: BLACK_GREYCOLOR,fontWeight: FontWeight.bold),),

                           ],
                         ),
                         // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),
                         SizedBox(
                           width: w*0.16,
                           child: MaterialButton(
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                             color: LIGHT_COLOR,
                             onPressed: (){
                               clicked=2;
                               Get.to(()=>Subject1(),arguments: item);
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



  CourseList() async {
    try {
      var res = await ApiProvider().postRequest(apiUrl: 'course-list', );
      if (res['status'].toString() == '1') {
        setState(() {
          data = res['Data'];
         baseurl = res['url'];
        });
        print(data);
        print(baseurl);
        // toast(res['message'].toString(),Colors.green);
      } else {

      }
    } catch (e) {
      print(e.toString());
    }






  }




}
