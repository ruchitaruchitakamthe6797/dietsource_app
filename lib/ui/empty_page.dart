// ignore_for_file: unused_element

import 'package:dietsource_app/constant/app_colors.dart';
import 'package:dietsource_app/ui/bottom_bar.dart';
import 'package:dietsource_app/widgets/elevated%20_button.dart';
import 'package:dietsource_app/widgets/login_textfeild.dart';
import 'package:dietsource_app/widgets/password_feild.dart';
import 'package:dietsource_app/widgets/textbutton_widget.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatefulWidget {
  Widget text;
  EmptyPage({Key? key, required this.text}) : super(key: key);

  @override
  State<EmptyPage> createState() => _EmptyPageState();
}

class _EmptyPageState extends State<EmptyPage> {
  //text controllers:-----------------------------------------------------------
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBaground,
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Center(
              child: widget.text,
            ),
          )),
    );
  }

  Widget _buildEmailFeild() {
    return LoginTextFeildCard(
      text: 'Email Address',
      hint: 'username@gmail.com',
      icon: Icon(Icons.email_outlined, color: Colors.black54),
      textController: _emailController,
    );
  }

  Widget _buildPassWordFeild() {
    return PassTextFeildCard(
      text: 'Password',
      hint: '.......',
      icon: Icon(Icons.lock_outline, color: Colors.black54),
      textController: _passwordController,
    );
  }

  Widget _buildButton() {
    return Row(
      children: [
        Expanded(
          child: RoundedButton(
            borderColor: AppColors.appBaground,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyNavigationBar()),
              );
            },
            backgroundColor: AppColors.appBaground,
            text: 'Login',
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildTextButton(text, onTap, color) {
    return TextButtonWidget(
        text: text, onTap: onTap, color: color, fontSize: 15.0);
  }
}
