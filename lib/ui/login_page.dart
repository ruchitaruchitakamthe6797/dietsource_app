// ignore_for_file: unused_element

import 'package:dietsource_app/constant/app_colors.dart';
import 'package:dietsource_app/ui/bottom_bar.dart';
import 'package:dietsource_app/widgets/elevated%20_button.dart';
import 'package:dietsource_app/widgets/login_textfeild.dart';
import 'package:dietsource_app/widgets/password_feild.dart';
import 'package:dietsource_app/widgets/textbutton_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  // Image.asset(''),
                  SizedBox(
                    height: 50,
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.buttonColor,
                    radius: 50,
                    child: Icon(
                      Icons.ac_unit,
                      size: 50,
                      color: Colors.white,
                    ), //Text
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  _buildEmailFeild(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildPassWordFeild(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildButton(),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: _buildTextButton(
                              'Signup', () {}, AppColors.buttonColor)),
                      _buildTextButton(
                          'Forgot Password?', () {}, AppColors.buttonColor)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
