import 'package:flutter/material.dart';

import '../COLORS/COLORS.dart';
import '../Fonts/Fonts.dart';
class E_Mart extends StatefulWidget {
  const E_Mart({Key? key}) : super(key: key);

  @override
  State<E_Mart> createState() => _E_MartState();
}

class _E_MartState extends State<E_Mart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: LIGHT_COLOR,
      appBar: AppBar(
        backgroundColor: LIGHT_COLOR,
        title: Text("E-Mart",style: TextStyle(color:WHITE_COLOR,fontSize: textSizeMedium ),),
      ),
      body: Container(

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/Images/gettyimages-1287359311-612x612-removebg-preview.png'),
          ),
        ),
      ),
    ));
  }
}
