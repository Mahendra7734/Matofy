import 'package:flutter/material.dart';

import '../../../COLORS/COLORS.dart';
import 'Landline_bill_details.dart';


class Landline_bill extends StatefulWidget {

  Landline_bill({Key? key}) : super(key: key);
  List sliderImages=[];
  @override
  State<Landline_bill> createState() => _Landline_billState();
}

class _Landline_billState extends State<Landline_bill> {
  var h;
  var w;
  final List<Map<String, dynamic>> _allUsers = [
    // {"id": 1, "name": "Rahul", "age": 29},
    // {"id": 2, "name": "Pankaj", "age": 40},
    // {"id": 3, "name": "Bob", "age": 5},
    // {"id": 4, "name": "Barbara", "age": 35},
    // {"id": 5, "name": "Candy", "age": 21},
    // {"id": 6, "name": "Colin", "age": 55},
    // {"id": 7, "name": "Audra", "age": 30},
    // {"id": 8, "name": "Banana", "age": 14},
    // {"id": 9, "name": "Caversky", "age": 100},
    // {"id": 10, "name": "Becky", "age": 32},
    // {"id": 11, "name": "Candy", "age": 21},
    // {"id": 12, "name": "Colin", "age": 55},
    // {"id": 13, "name": "Audra", "age": 30},
    // {"id": 14, "name": "Banana", "age": 14},
    // {"id": 15, "name": "Caversky", "age": 100},
    // {"id": 16, "name": "Becky", "age": 32},
    {"name":"Excell Broadband"},
    {"name":"Netplus Broadband"},
    {"name":"Alliance Broadband Services Pvt. Ltd."},
    {"name":"BSNL Landline - Corporate"},
    {"name":"Apple Fibernet"},
    {"name":"DEN Broadband"},
    {"name":"Ficus Telecome Pvt Ltd."},
    {"name":"Flash Fibernet"},
    {"name":"Foxtel Broadband"},
    {"name":"GTPL Broadband"},
    {"name":"Kings Broadband"},
    {"name":"Limras Eronet"},
    {"name":"M-Net Fiber Fast"},
    {"name":"NSB Broadband"},
    {"name":"Telosy Broadband"},
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
          automaticallyImplyLeading: false,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: TextField(
                onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(
                    prefixIcon: BackButton(color: BLACK_GREYCOLOR,),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search by provider',
                    border: InputBorder.none),
              ),
            ),
          )
      ),
      // appBar: AppBar(
      //
      //     backgroundColor: LIGHT_COLOR,
      //     title: Container(
      //       width: double.infinity,
      //       height: 40,
      //       decoration: BoxDecoration(
      //           color: Colors.white, borderRadius: BorderRadius.circular(5)),
      //       child: Center(
      //         child: TextField(
      //           onChanged: (value) => _runFilter(value),
      //           decoration: InputDecoration(
      //               prefixIcon: const Icon(Icons.search),
      //               suffixIcon: IconButton(
      //                 icon: const Icon(Icons.clear),
      //                 onPressed: () {
      //                   /* Clear the search field */
      //                 },
      //               ),
      //               hintText: 'Search...',
      //               border: InputBorder.none),
      //         ),
      //       ),
      //     )),
      body: Column(
        // alignment: Alignment.bottomCenter,
        children: [
          //? Dot Indicator

          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: w*0.03,right: w*0.03,top: h*0.02),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: WHITE_COLOR
              ),
             // height: h*0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10,bottom: 15),
                    child: Text("Billers in Rajsthan",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Expanded(
                    //height: h*0.45,
                    child: ListView.builder(
                        //physics: NeverScrollableScrollPhysics(),
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Landline_bill_detals()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,top: 20),
                              child: Row(
                                children: [
                                  Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colors.white,
                                          boxShadow: [BoxShadow(blurRadius: 1,color: Colors.black45)]
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Image.asset('assets/Images/tata-sky-squarelogo-1416632044545.png'),
                                      )),
                                  SizedBox(
                                    width: w*0.04,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(_foundUsers[index]['name']),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 8),
                                          child: Divider(
                                            height: 5,
                                            color: BLACK_COLOR.withOpacity(0.4),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
    // } else {
    //   return Container();
    // }


  }
}
