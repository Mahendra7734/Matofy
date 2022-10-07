
import 'dart:io';
import 'package:flutter/material.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import 'Coursemetarial_video.dart';

class Course_Material extends StatefulWidget {

   Course_Material({Key? key}) : super(key: key);

  @override
  State<Course_Material> createState() => _Course_MaterialState();
}

class _Course_MaterialState extends State<Course_Material> {
  var h;
  var w;
  var Data=[];
  var baseurl;
  var item =Get.arguments;
  var chapterlist_id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chapterlist_id=item['id'].toString();
    chapter_extradata();

  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Course Meterial",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body:
      Container(

        child:ListView.builder(
            itemCount: Data.length,
            itemBuilder: (context ,index){
              var item1=Data[index];
              var path_pdf=item1['pdf'].toString();
              var path_image=item1['video_thumbnail'].toString();
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    InkWell(
                      onTap: (){
                        print("$baseurl/$path_pdf");
                        openFile(url:"$baseurl/$path_pdf" , fileName: 'Chapter-details.pdf');
                      },
                      child: Container(
                        height: h*0.2,
                        width: w*0.37,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                            borderRadius: BorderRadius.circular(20),
                            color: WHITE_COLOR
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: h*0.14,
                                width: w*0.35,
                                child: Image.asset('assets/Images/PDF_file_icon.svg.png'),
                              ),
                              Text(item1['pdf_title'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizeSmall),)
                            ],
                          ),

                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Course_video()));
                      },
                      child: Container(
                        height: h*0.2,
                        width: w*0.37,
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                            borderRadius: BorderRadius.circular(20),
                            color: WHITE_COLOR
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: h*0.14,
                                width: w*0.35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: NetworkImage('$baseurl/$path_image'),fit: BoxFit.cover
                                    )
                                ),
                              ),
                              Text(item1['video_title'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizeSmall),)
                            ],
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              );
            }) ,
      ),
    ));
  }
  chapter_extradata() async {
    var data={
      'content_id':'1',
    };
    print(chapterlist_id);
    try {
      var res = await ApiProvider().postRequest(apiUrl: 'chapter-extradata', data: data);
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


  Future openFile({required String url, required String? fileName}) async {
    final file = await downloadFile(url, fileName!);
    if (file == null) return;
    print('path:${file.path}');
    OpenFile.open(file.path);

  }

  Future<File?> downloadFile(String url, String fileName) async {
    final appStorage = await getApplicationDocumentsDirectory();

    final file = File('${appStorage.path}/$fileName');

    try {
      final response = await Dio().get(url,
          options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            receiveTimeout: 0,
          ));

      final raf = file.openSync(mode: FileMode.write);
      raf.writeFromSync(response.data);
      await raf.close();

      return file;
    } catch (e) {}
  }
}
