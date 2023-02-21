import 'package:dietsource_app/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  final text, onPressed, boxColor, color;
  const CategoryButton({
    Key? key,
    this.onPressed,
    this.text,
    this.color,
    this.boxColor,
  }) : super(key: key);

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          decoration: BoxDecoration(
            //     border: Border.all(
            //       color: widget.borderColor,
            //     ),
            borderRadius: BorderRadius.circular(30),
            color: widget.boxColor,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 0),
            child: Center(
              child: Text(
                widget.text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: widget.color),
              ),
            ),
          )),
      onTap: widget.onPressed,
      // style: ElevatedButton.styleFrom(
      //     primary: AppColors.buttonColor,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(50),
      //       //border radius equal to or more than 50% of width
      //     ),
      //     padding: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
      //     textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
    );
  }
}
