// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:dietsource_app/constant/app_colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final onPressed, borderColor, backgroundColor, text, textColor;
  const RoundedButton(
      {Key? key,
      required this.onPressed,
      required this.borderColor,
      required this.backgroundColor,
      required this.text,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        primary: AppColors.buttonColor,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 15, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
