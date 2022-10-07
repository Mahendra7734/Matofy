import 'package:flutter/material.dart';
import '../../COLORS/COLORS.dart';
import '../../Fonts/Fonts.dart';
import '../../Storage/storage.dart';
class Service_passive_income extends StatefulWidget {
  const Service_passive_income({Key? key}) : super(key: key);

  @override
  State<Service_passive_income> createState() => _Service_passive_incomeState();
}

class _Service_passive_incomeState extends State<Service_passive_income> {
  var h;
  var w;
  //var url;
 // var data =[];
  //var baseurl;



  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   ActivationWallet_list();
  // }

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: LIGHT_COLOR,
        appBar: AppBar(
          backgroundColor: LIGHT_COLOR,
          // leading: IconButton(onPressed: (){
          //  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomAppbar(currentindex: 0,)));
          // }, icon: Icon(Icons.arrow_back)),
          title: Text("Service Passive Income"),

        ),
        body:
       // data==null? Center(child: CircularProgressIndicator()):
        ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index){
           // var item = data[index];
            //var path=item['image'].toString();


            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 30,top: 10,bottom: 10),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          SizedBox(
                            width: w*0.4,
                          ),
                          Text("Wallet Type :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          SizedBox(
                            width: w*0.4,
                          ),
                          Text("Type :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          SizedBox(
                            width: w*0.4,
                          ),
                          SizedBox(
                            height: h*0.003,
                          ),
                          Text("Amount :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          SizedBox(
                            width: w*0.4,
                          ),
                          Text("Date :",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          SizedBox(
                            width: w*0.4,
                          ),


                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rahul",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),

                          Text("vxzc",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          Text("osjdis",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          Text("200",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),),
                          SizedBox(
                              width: w*0.27,
                              child: Text("02/02/2022",style: TextStyle(color: BLACK_COLOR,fontWeight: FontWeight.bold,fontSize: textSizemMedium),)),
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
//   ActivationWallet_list() async {
//     print(id());
//     var data1={
//       'user_id':id(),
//       'Wallet_type':'income'
//     };
//     try {
//       var res = await ApiProvider().postRequest(apiUrl: 'user-wallet-list',data: data1 );
//       if (res['status'].toString() == '1') {
//         setState(() {
//           data = res['Data'];
//           //baseurl = res['media_url'];
//         });
//         print(data);
//         //print(baseurl);
//         // toast(res['message'].toString(),Colors.green);
//       } else {
//
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//
//
//   }
 }
