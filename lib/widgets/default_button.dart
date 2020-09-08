import 'package:flutter/material.dart';
import 'package:konektor/config/palette.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Function onPressed;

  DefaultButton({@required this.title, this.bgColor, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(minRadius),
      child: MaterialButton(
        color: bgColor,
        minWidth: double.infinity,
        padding: EdgeInsets.all(medPadding),
        onPressed: onPressed,
        child: Text(title, style: TextStyle(color: bGColorLight, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
