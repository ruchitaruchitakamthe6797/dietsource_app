// ignore_for_file: unused_element

import 'package:dietsource_app/constant/app_colors.dart';
import 'package:dietsource_app/widgets/cards.dart';
import 'package:dietsource_app/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  // Image.asset(''),
                  SizedBox(
                    height: 20,
                  ),

                  ProfileCardWidget(),
                  SizedBox(
                    height: 20,
                  ),

                  _buildOverview(),
                  SizedBox(
                    height: 20,
                  ),
                  // CardWidget(),

                  _buildCardWidget(Icons.arrow_upward_rounded, 'Sent',
                      'Sending Payment to client', '\$150'),
                  SizedBox(
                    height: 10,
                  ),
                  _buildCardWidget(Icons.arrow_downward_outlined, 'Receive',
                      'Receiving salary from company', '\$250'),
                  SizedBox(
                    height: 10,
                  ),
                  _buildCardWidget(Icons.local_atm_outlined, 'Loan',
                      'Loan for the car', '\$400'),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOverview() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 5,
          child: Row(
            children: [
              Flexible(
                child: Text(
                  'Overview',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 27,
                      color: AppColors.amountColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(Icons.notifications_none),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, right: 3),
                    child: Icon(
                      Icons.circle,
                      size: 6,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                color: AppColors.buttonColor,
                fontWeight: FontWeight.w500),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            'Sept 13, 2020',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                color: AppColors.buttonColor,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  Widget _buildCardWidget(icon, text, desc, amount) {
    return CardWidget(
      icon: icon,
      text: text,
      desc: desc,
      amount: amount,
    );
  }
}
