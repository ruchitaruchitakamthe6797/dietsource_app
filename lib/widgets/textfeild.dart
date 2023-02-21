import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final Widget icon;
  final Widget? suffixIcon;
  final String? hint;
  final String? errorText;
  final bool isObscure;
  final List<TextInputFormatter> inputFormatter;
  final bool isReadOnly;
  final int maxLength;
  final bool isPrefixText;
  final String prefixText;
  final bool obscureText;
  final TextInputType? inputType;
  final TextEditingController textController;
  final EdgeInsets padding;
  final Color hintColor;
  final Color iconColor;
  final FocusNode? focusNode;
  final ValueChanged? onFieldSubmitted;
  final ValueChanged? onChanged;
  final VoidCallback? onTap;
  final bool autoFocus;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return TextFormField(
      controller: textController,
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
        // fontWeight: FontWeight.w500,
      ),
      onChanged: onChanged,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusColor: Colors.white,
        //add prefix icon
        isDense: true,
        prefixIcon: icon,
        suffixIcon: suffixIcon,

        // errorText: "Error",

        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        contentPadding: EdgeInsets.only(left: 15, top: 13, right: 15),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Colors.blue, width: 1.0),
        //   borderRadius: BorderRadius.circular(10.0),
        // ),
        fillColor: Colors.grey,

        hintText: hint,

        //make hint text
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: "verdana_regular",
          fontWeight: FontWeight.w400,
        ),

        //create lable
        // labelText: 'Email/Mobile',
        // //lable style
        // labelStyle: TextStyle(
        //   color: Colors.grey,
        //   fontSize: 16,
        //   fontFamily: "verdana_regular",
        //   fontWeight: FontWeight.w400,
        // ),
      ),
    );
  }

  const TextFieldWidget({
    Key? key,
    required this.icon,
    this.suffixIcon,
    this.errorText,
    required this.textController,
    this.inputFormatter = const [],
    this.inputType,
    this.hint,
    this.isObscure = false,
    this.isReadOnly = false,
    this.isPrefixText = false,
    this.prefixText = '',
    this.maxLength = 25,
    this.obscureText = false,
    this.padding = const EdgeInsets.all(0),
    this.hintColor = Colors.grey,
    this.iconColor = Colors.grey,
    this.focusNode,
    this.onFieldSubmitted,
    this.onChanged,
    this.onTap,
    this.autoFocus = false,
    this.inputAction,
  }) : super(key: key);
}
