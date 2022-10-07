import 'package:flutter/material.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import '../Storage/storage.dart';
class Earn_with_system extends StatefulWidget {
  const Earn_with_system({Key? key}) : super(key: key);

  @override
  State<Earn_with_system> createState() => _Earn_with_systemState();
}

class _Earn_with_systemState extends State<Earn_with_system> {
  var h;
  var w;

  var Data=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // chapterlist_id=item['id'].toString();
    Earn_With_System();

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
          title: Text("Earn With System",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,top: 15,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text("Network",style: TextStyle(color: WHITE_COLOR,fontSize: textSizeLarge,fontWeight: FontWeight.bold),),
            Container(
              margin: EdgeInsets.only(top: h*0.030),
              height: h*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 4)],
                color: WHITE_COLOR
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width:w*0.2 ,
                          height: h*0.040,
                          // height: h*0.0,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                              borderRadius: BorderRadius.circular(13),
                              color: WHITE_COLOR
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("Name",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizeYSmall),),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width:w*0.2 ,
                          height: h*0.040,
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                            borderRadius: BorderRadius.circular(15),
                            color: WHITE_COLOR
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("Mobile No.",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizeYSmall)),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          width:w*0.2 ,
                          height: h*0.040,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                              borderRadius: BorderRadius.circular(15),
                              color: WHITE_COLOR
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Text("Sponsor id",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizeYSmall)),
                          ),
                        ),

                        // Container(
                        //   alignment: Alignment.center,
                        //   width:w*0.15 ,
                        //   height: h*0.040,
                        //   decoration: BoxDecoration(
                        //       boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                        //       borderRadius: BorderRadius.circular(15),
                        //       color: WHITE_COLOR
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(7.0),
                        //     child: Text("Level",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizeYSmall)),
                        //   ),
                        // ),

                        Container(
                          alignment: Alignment.center,
                          width:w*0.2 ,
                          height: h*0.040,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                              borderRadius: BorderRadius.circular(15),
                              color: WHITE_COLOR
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Date",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizeYSmall)),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Flexible(
                   // flex: 5,
                    child: ListView.builder(
                        itemCount: Data.length,

                        itemBuilder: (BuildContext context , int Index){
                          var item = Data[Index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: BLACK_GREYCOLOR,blurRadius: 2)],
                            color: WHITE_COLOR
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               SizedBox(
                                   width:w*0.14,
                                   child: Text(item['username'].toString(),style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold),)),
                                Text(item['mobile'].toString(),style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold)),
                                Text(item['reffer_by'].toString(),style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold)),
                                //Text("   Level2",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold)),
                                Text("06-sep-2022",style: TextStyle(color: BLACK_COLOR,fontSize: textSizeYSmall,fontWeight: FontWeight.bold)),

                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            )
        ],
            ),
          ),
        ),
      ),
    );
  }
  Earn_With_System() async {
    var data1={
      'user_id':id()
    };
    try{
      var response = await  ApiProvider().postRequest(apiUrl: 'my-network-list',data: data1);
      if(response['status'].toString()=='1'){
        setState(() {
          Data=response['data'];
        });
        print(Data);
      }else{

      }
    }catch (e){
      print(e.toString());
    }
  }
}
