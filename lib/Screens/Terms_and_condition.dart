import 'package:flutter/material.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import 'package:flutter_html/flutter_html.dart';

import '../Storage/storage.dart';

class Terms_and_condition extends StatefulWidget {

  const Terms_and_condition({Key? key}) : super(key: key);

  @override
  State<Terms_and_condition> createState() => _Terms_and_conditionState();
}

class _Terms_and_conditionState extends State<Terms_and_condition> {
  var h;
  var w;



  var url;
  var path1;
  var name ;
  var description;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    CMS_aboutus();
  }
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: LIGHT_COLOR,
        appBar: AppBar(
          backgroundColor: LIGHT_COLOR,
          title: Text("Terms and condition",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
        ),
        body:name==null? Center(child: CircularProgressIndicator()):
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                // height: h*0.2,
                child: Padding(
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Name :   ',style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                                  Text(name,style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),

                                ],
                              ),
                              SizedBox(
                                height: h*0.003,
                              ),
                              Container(
                                  height: h*0.07,
                                  width: w*0.2,
                                  child:
                                  //Image.asset(Data[0]['image'].toString())),
                                  Image.network(path1)),
                              SizedBox(
                                height: h*0.02,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0),
                                child: Text('Description :   ',style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium,),),
                              ),
                              SizedBox(
                                  width: w*0.8,
                                  child:
                                  Html(data: description,)
                                //Text(data,style: TextStyle(color: BLACK_COLOR,fontSize: textSizemMedium),)),
                              ),

                            ],
                          ),

                          // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),

                        ],
                      ),


                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
  CMS_aboutus() async {
    print(id());
    var data1={
      'id':'1',

    };
    try {
      var res = await ApiProvider().postRequest(apiUrl: 'cms-list',data: data1);
      if (res['status'].toString() == '1') {
        setState(() {
          name = res['data'][0]['name'];
          description = res['data'][0]['description'];
          url=res['data'][0]['Image'];
          var path=res['image_url'];
          path1=path+"/"+url;

        });
      } else {

      }
    } catch (e) {
      print(e.toString());
    }






  }
}
