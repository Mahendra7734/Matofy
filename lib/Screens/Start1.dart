import 'package:flutter/material.dart';
class Start1 extends StatefulWidget {
  const Start1({Key? key}) : super(key: key);

  @override
  State<Start1> createState() => _Start1State();
}

class _Start1State extends State<Start1> {
  var h;
  var w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(

      body:
      Container(
          height: double.infinity,
          child: Image.asset('assets/Images/BDES-2480_Illustration_for_new_partner_program.webp',)),
    );
  }
}
