import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../COLORS/COLORS.dart';
import '../../../Fonts/Fonts.dart';
import 'Postpaid_Bill1.dart';

class Postpaid_bill extends StatefulWidget {

  Postpaid_bill({Key? key}) : super(key: key);
  List sliderImages=[];
  @override
  State<Postpaid_bill> createState() => _Postpaid_billState();
}

class _Postpaid_billState extends State<Postpaid_bill> {
  var h;
  var w;
  int _currentSliderIndex = 0;

  final CarouselController _controller = CarouselController();

  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Rahul", "age": 29},
    {"id": 2, "name": "Pankaj", "age": 40},
    {"id": 3, "name": "Bob", "age": 5},
    {"id": 4, "name": "Barbara", "age": 35},
    {"id": 5, "name": "Candy", "age": 21},
    {"id": 6, "name": "Colin", "age": 55},
    {"id": 7, "name": "Audra", "age": 30},
    {"id": 8, "name": "Banana", "age": 14},
    {"id": 9, "name": "Caversky", "age": 100},
    {"id": 10, "name": "Becky", "age": 32},
    {"id": 11, "name": "Candy", "age": 21},
    {"id": 12, "name": "Colin", "age": 55},
    {"id": 13, "name": "Audra", "age": 30},
    {"id": 14, "name": "Banana", "age": 14},
    {"id": 15, "name": "Caversky", "age": 100},
    {"id": 16, "name": "Becky", "age": 32},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    // if (widget.sliderImages.isNotEmpty) {
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("Postpaid Bill",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          //alignment: AlignmentDirectional.bottomCenter,
          // alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: WHITE_COLOR
                ),
                child: TextField(

                  onChanged: (value) => _runFilter(value),
                  decoration: const InputDecoration(
                  border: InputBorder.none,
                      hintText: 'Search by name',
                    prefixIcon: Icon(Icons.search,color: BLACK_GREYCOLOR,),


                  ),


                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  margin: EdgeInsets.only(left: w*0.03,right: w*0.03,top: h*0.02),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: WHITE_COLOR
                  ),
                  height: h*1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 10,bottom: 15),
                        child: Text("All Contact",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),

                      Expanded(
                        child: _foundUsers.isNotEmpty?ListView.builder(

                            itemCount: _foundUsers.length,
                            itemBuilder: (context, index) {
                             return InkWell(
                               onTap: (){
                                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Postpaid_Bill1()));
                               },
                               child: Padding(
                                  // key: ValueKey(_foundUsers[index]["id"]),
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                          height: 40,
                                          width: 40,
                                          // decoration: BoxDecoration(
                                          //     borderRadius: BorderRadius.circular(50),
                                          //     color: Colors.white,
                                          //     boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                                          // ),
                                          child:
                                          // Image.asset('assets/Images/GAILGAS_logo-removebg-preview.png')
                                          CircleAvatar(
                                            backgroundColor: GREEN_XCOLOR,
                                            child: Text("RH", style: TextStyle(
                                                color: WHITE_COLOR),),
                                          )
                                      ),
                                      SizedBox(
                                        width: w * 0.04,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Text(_foundUsers[index]['name']),
                                                Text("9985457261")
                                              ],
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8),
                                              child: Divider(
                                                height: 5,
                                                color: BLACK_COLOR.withOpacity(
                                                    0.4),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                             );
                            })  : const Text(
                          'No results found',
                          style: TextStyle(fontSize: 24),
                        ),
                      )

                    ],
                  ),
                ),

            Padding(
              padding:  EdgeInsets.only(bottom:h*0.19 ),
              child: Container(
                decoration: BoxDecoration(
                  color: WHITE_COLOR
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15,top: 10,bottom: 10),
                        width: w*0.7,
                        child: Text("Adding Mobile Postpaid biller allows Fund App to fetch your current and future bills so that you can view and pay them. ")),
                    Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/Images/Online_Bill_Pay_logo-removebg-preview.png'))
                  ],
                ),
              ),
            ),
              ],
            ),
          ],
        ),
      ),
    );
    // } else {
    //   return Container();
    // }



  }
}
