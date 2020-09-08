import 'package:flutter/material.dart';
import 'package:konektor/config/palette.dart';

class AuthInputField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType kType;

  AuthInputField({Key key, @required this.labelText, this.kType, this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(.1),
            blurRadius: 20.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              50.0, // Move to right 10  horizontally
              50.0, // Move to bottom 10 Vertically
            ),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(minRadius),
      ),
      child: TextFormField(
        keyboardType: kType,
        style: TextStyle(color: secondaryDarkColor, fontWeight: FontWeight.bold),
        obscureText: obscureText && obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: smallPadding, horizontal: defaultPadding),
          labelText: labelText,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: secondaryLightColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
