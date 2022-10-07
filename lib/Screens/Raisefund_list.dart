import 'package:flutter/material.dart';
import '../Api_provider.dart';
import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
import '../Storage/storage.dart';
import 'BottomApp/BottomAppBar.dart';
import 'Fundraiser.dart';

class Raisefund_list extends StatefulWidget {
  const Raisefund_list({Key? key}) : super(key: key);

  @override
  State<Raisefund_list> createState() => _Raisefund_listState();
}

class _Raisefund_listState extends State<Raisefund_list> {
  var h;
  var w;
  //var url;
  var data =[];
  var baseurl;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Fund_list();
  }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        leading: IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomAppbar(currentindex: 0,)));
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Raise Fund "),
        actions: [
          TextButton(onPressed: (){

          }, child: Text("Add Fund",style: TextStyle(color: WHITE_COLOR),)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Fundraiser()));
          }, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
          var item = data[index];
          //var path=item['image'].toString();


          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 30,top: 10,bottom: 10),
                child:Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Patient Name :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                        SizedBox(
                          width: w*0.4,
                        ),
                        Text("Age :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                        SizedBox(
                          width: w*0.4,
                        ),
                        Text("Hospital name :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                        SizedBox(
                          width: w*0.4,
                        ),
                        SizedBox(
                          height: h*0.003,
                        ),
                        Text("Raise Amount :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                        SizedBox(
                          width: w*0.4,
                        ),
                        Text("City :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                        SizedBox(
                          width: w*0.4,
                        ),


                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item['patient_name'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),

                    Text(item['age'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                    Text(item['hospital_name'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                    Text(item['raise_amount'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                    Text(item['city'].toString(),style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                      ],
                    ),
                    // DefaultButton(width: w*0.1, height: h*0.04, color: BLUE_COLOR, text: "View", press: (){}, textcolor: WHITE_COLOR),
                    // SizedBox(
                    //   width: w*0.15,
                    //   child: FlatButton(
                    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    //     color: BLUE_COLOR,
                    //     onPressed: (){
                    //      // Get.to(()=>Course(),arguments: item);
                    //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>Course(),));
                    //     },
                    //     child: Text(
                    //       "View",
                    //       textAlign: TextAlign.center,
                    //       style:  TextStyle(
                    //           color: WHITE_COLOR,
                    //           fontSize: textSizeSmall,
                    //           fontWeight: FontWeight.w700),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),


              ),
            ),
          );
        },

      )
    );
  }
  Fund_list() async {
    var data1={
     'user_id':id()
    };
    try {
      var res = await ApiProvider().postRequest(apiUrl: 'fund-list',data: data1 );
      if (res['status'].toString() == '1') {
        setState(() {
          data = res['Data'];
          baseurl = res['media_url'];
        });
        print(data);
        //print(baseurl);
        // toast(res['message'].toString(),Colors.green);
      } else {

      }
    } catch (e) {
      print(e.toString());
    }


  }
}
