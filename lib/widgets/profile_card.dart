import 'package:dietsource_app/constant/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({Key? key}) : super(key: key);

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
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.align_horizontal_left,
                    color: AppColors.amountColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert_outlined,
                    color: AppColors.amountColor,
                  ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.pink.shade300,
            radius: 50,
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/business-concept-portrait-confident-young-businesswoman-keeping-arms-crossed-looking-camera-w_1258-104422.jpg?w=2000'),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Hira Raiz',
            style: TextStyle(
                fontSize: 22,
                color: AppColors.buttonColor,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'UX/UI Designer',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAmountIncome('\$8900', 'Income'),
                SizedBox(
                  width: 5,
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                _buildAmountIncome('\$5500', 'Expenses'),
                SizedBox(
                  width: 5,
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                _buildAmountIncome('\$890', 'Loan'),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  Widget _buildAmountIncome(amount, text) {
    return Column(
      children: [
        Text(
          amount,
          style: TextStyle(
              fontSize: 16,
              color: AppColors.amountColor,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
