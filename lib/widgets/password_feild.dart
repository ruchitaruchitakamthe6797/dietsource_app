import 'package:dietsource_app/constant/app_colors.dart';
import 'package:dietsource_app/widgets/password_textfeild.dart';
import 'package:dietsource_app/widgets/textfeild.dart';
import 'package:flutter/material.dart';

class PassTextFeildCard extends StatelessWidget {
  final icon, textController, text, fontSize, hint, onTap;
  const PassTextFeildCard(
      {Key? key,
      this.icon,
      this.text,
      this.fontSize,
      this.textController,
      this.onTap,
      this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: AppColors.cardShadowColor,
              blurRadius: 15.0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              text,
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: PassTextFieldWidget(
              // icon: Icon(Icons.email_outlined),
              icon: icon,
              onTap: onTap,
              hint: hint,
              textController: textController,
            ),
          ),
        ],
      ),
    );
  }
}
