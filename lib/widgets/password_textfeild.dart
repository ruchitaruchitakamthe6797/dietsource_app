import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PassTextFieldWidget extends StatefulWidget {
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
  State<PassTextFieldWidget> createState() => _PassTextFieldWidgetState();

  const PassTextFieldWidget({
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

class _PassTextFieldWidgetState extends State<PassTextFieldWidget> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return TextFormField(
      controller: widget.textController,
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
        // fontWeight: FontWeight.w500,
      ),
      onChanged: widget.onChanged,
      obscureText: _obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusColor: Colors.white,
        //add prefix icon
        isDense: true,
        prefixIcon: widget.icon,
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye_outlined,
            color: Colors.black54,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),

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

        hintText: widget.hint,

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
}
