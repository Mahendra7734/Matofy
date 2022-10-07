import 'package:flutter/material.dart';

//import '../Auth/Subject_list.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
//import '../Storage/storage.dart';
import 'Chapter_list.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

class Subject1 extends StatefulWidget {
  //String course_id;
  // Course({Key? key,required this.course_id}) : super(key: key);
const Subject1({Key? key}) : super(key: key);

  @override
  State<Subject1> createState() => _Subject1State();
}

class _Subject1State extends State<Subject1> {

  var h;
  var w;
  bool isloding = true;
  var Data =[];
  var baseurl;
  var item=Get.arguments;
  var Course_id;

  // void initState() {
  //   subject_details(widget.course_id).then((value) {
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
  void initState() {
    // TODO: implement initState
    super.initState();
    Course_id=item['id'].toString();
    print(item);
    SubjectList();
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
          title: Text("Subject",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
        ),
        body: Container(

          child: Data==null? Center(child: CircularProgressIndicator()):
            ListView.builder(
                    itemCount: Data.length,
                    itemBuilder: (context, index){
                      var item=Data[index];
                      var Subject=item['id'].toString();

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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: w*0.5,
                                        child:
                                        //Text(Data[0]['name'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
                                        Text(item['name'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
                                    SizedBox(
                                      height: h*0.003,
                                    ),
                                    Container(
                                        width: w*0.5,
                                        child:
                                        //Html(data: Data[0]['description'].toString()),
                                      Html(data: item['description'].toString(),)
                                        // Text(,style: TextStyle(color: BLACK_GREYCOLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
                                    )
                                  ],
                                ),
                                Container(
                                    height: h*0.07,
                                    width: w*0.2,
                                    child:
                                    //Image.asset(Data[0]['image'].toString())),
                                    //Image.network('$baseurl/$path')),
                                    Image.asset('assets/Images/banner2.jpg',fit: BoxFit.fill,)),
                                // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),
                                SizedBox(
                                  width: w*0.16,
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                    color: LIGHT_COLOR,
                                    onPressed: (){

                                      var array={
                                        'course':Course_id,
                                        'subject':Subject,
                                      };
                                      Get.to(()=>Chapter_list(),arguments: array);
                                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>Chapter_list(subject_id: '6', course_id: '5',)));

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
                    }


            )

        ),
      ),
    );
  }

  SubjectList()async{
    var data={
   'course_id':Course_id,

    };
    print(Course_id);
    try{
      var response =await ApiProvider().postRequest(apiUrl: 'subject-list',data: data);
      if(response['status'].toString()=='1'){
        setState(() {
          Data=response['Data'];
          baseurl=response['url'];
          print(Data);
          print(baseurl);
        });
      }else{

      }
    }catch(e){
      print(e.toString());
    }
  }
}
