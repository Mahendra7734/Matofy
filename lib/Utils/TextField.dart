import 'package:flutter/material.dart';

import '../COLORS/COLORS.dart';
class TextField1 extends StatelessWidget {
  const TextField1(
      {this.widget,

        // this.readonly,
        Key? key,
        required this.hintTxt, required this.sufficicon, required this.Prifixicon})
      : super(key: key);
  final String hintTxt;
  final Widget? widget;
  final Icon sufficicon,Prifixicon;


  // final bool? readonly;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10,top: 20),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(

            height: 50,
            child: TextFormField(
              cursorColor: BLACK_GREYCOLOR,
              decoration: InputDecoration(
                  hintText: hintTxt,
                  hintStyle: TextStyle(fontSize: 16, color: BLACK_GREYCOLOR),
                  focusedBorder:  OutlineInputBorder(
                   // borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none
                  ),

                  border:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none
                  ),

                suffixIcon: sufficicon,
                prefixIcon: Prifixicon,

              ),

            ),
          ),
        ),
      );
  }
}
