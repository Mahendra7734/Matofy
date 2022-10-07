import 'package:flutter/material.dart';
import '../COLORS/COLORS.dart';

class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  var h;
  var w;

  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LIGHT_COLOR,
      // appBar: AppBar(
      //   title: Text("Notification", style: TextStyle(fontSize: textSizeMedium)),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 15),
      //       child: Icon(Icons.notification_important_sharp),
      //     )],
      //   backgroundColor: BLUE_COLOR,
      // ),
      // drawer: drawer(),
      body: Container(
        //height: 500,

        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext contect, int Index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Activation Wallet",
                                style: TextStyle(
                                    color: BLACK_COLOR,
                                    fontWeight: FontWeight.bold)),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "06-Sep-2022",
                                style: TextStyle(
                                    color: BLACK_COLOR,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: w * 0.3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("You wallet is successfulley activeted",
                                style: TextStyle(color: BLACK_GREYCOLOR)),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "09:45pm",
                                style: TextStyle(color: BLACK_GREYCOLOR),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
