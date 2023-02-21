import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final text, onTap, color,fontSize;
  const TextButtonWidget({Key? key, this.onTap, this.text, this.color,this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: fontSize),
      ),
    );
  }
}
