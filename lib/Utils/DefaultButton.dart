import 'package:flutter/material.dart';
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    required this.width,
    required this.height,
    required this.color,
    Key? key,
    required this.text,
    required this.press,
    required this.textcolor,
  }) : super(key: key);
  final String text;
  final Function() press;
  final Color color;
  final Color textcolor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child:  MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: color,
        onPressed: press,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style:  TextStyle(
              color: textcolor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}