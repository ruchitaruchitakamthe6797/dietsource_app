import 'package:dietsource_app/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final icon, text, desc, amount;
  const CardWidget({Key? key, this.amount, this.desc, this.icon, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: AppColors.cardShadowColor,
              blurRadius: 15.0,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: AppColors.appBaground,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      icon,
                      // Icons.arrow_upward_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          desc,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Text(
                        amount,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
