// ignore_for_file: unused_element

import 'package:dietsource_app/constant/app_colors.dart';
import 'package:dietsource_app/widgets/category_button.dart';
import 'package:dietsource_app/widgets/elevated%20_button.dart';
import 'package:dietsource_app/widgets/payment_card.dart';
import 'package:flutter/material.dart';

class ResentTransactions extends StatefulWidget {
  const ResentTransactions({Key? key}) : super(key: key);

  @override
  State<ResentTransactions> createState() => _ResentTransactionsState();
}

class _ResentTransactionsState extends State<ResentTransactions> {
  int _Selected = 0;
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Column(
                // mainAxisSize: MainAxisSize.max,
                children: [
                  // Image.asset(''),
                  Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          // Icons.arrow_upward_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          // Icons.arrow_upward_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Recent Transactions',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 22,
                              color: AppColors.buttonColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Text(
                        'See all',
                        textAlign: TextAlign.end,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  _buildCategoryList(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildCardWidget(Icons.mark_as_unread_outlined, 'Payment',
                      'Payment from andrea', '\$30.00'),
                  SizedBox(
                    height: 20,
                  ),
                  _buildCircular(),
                  SizedBox(
                    height: 20,
                  ),
                  _buildButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardWidget(icon, text, desc, amount) {
    return PaymentCardWidget(
      icon: icon,
      text: text,
      desc: desc,
      amount: amount,
    );
  }

  Widget _buildCategoryList() {
    return SizedBox(
        height: 35,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CategoryButton(
              onPressed: () {
                setState(() {
                  _Selected = 0;
                });
              },
              text: 'All',
              boxColor: _Selected == 0 ? AppColors.buttonColor : Colors.white,
              color: _Selected == 0 ? Colors.white : Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            CategoryButton(
              onPressed: () {
                setState(() {
                  _Selected = 1;
                });
              },
              text: 'Income',
              boxColor: _Selected == 1 ? AppColors.buttonColor : Colors.white,
              color: _Selected == 1 ? Colors.white : Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            CategoryButton(
              onPressed: () {
                setState(() {
                  _Selected = 2;
                });
              },
              text: 'Expense',
              boxColor: _Selected == 2 ? AppColors.buttonColor : Colors.white,
              color: _Selected == 2 ? Colors.white : Colors.black,
            ),
          ],
        ));
  }

  Widget _buildButton() {
    return Row(
      children: [
        Expanded(
          child: RoundedButton(
            borderColor: AppColors.appBaground,
            onPressed: () {},
            backgroundColor: AppColors.appBaground,
            text: 'See Details',
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }

  _buildCircular() {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                            decoration: BoxDecoration(
                                // color: Colors.blue,
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.grey.shade400)),
                            child: Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: CircleAvatar(
                                  backgroundColor: Colors.blue.shade200,
                                  radius: 110,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue.shade100,
                                    radius: 90,
                                    child: CircleAvatar(
                                        backgroundColor: AppColors.buttonColor,
                                        radius: 60,
                                        child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 55,
                                            child: CircleAvatar(
                                              backgroundColor:
                                                  Colors.pink.shade300,
                                              radius: 50,
                                              backgroundImage: NetworkImage(
                                                  'https://img.freepik.com/free-photo/business-concept-portrait-confident-young-businesswoman-keeping-arms-crossed-looking-camera-w_1258-104422.jpg?w=2000'),
                                            ))),
                                  )),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(bottom: 40.0, left: 200),
                          child: CircleAvatar(
                              backgroundColor: Colors.pink.shade300,
                              radius: 30,
                              backgroundImage: NetworkImage(
                                'https://images.unsplash.com/flagged/photo-1553642618-de0381320ff3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cHJvZmVzc2lvbmFsJTIwbWFufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
                                // height: 30,
                              )),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 200.0,
                        bottom: 40,
                      ),
                      child: CircleAvatar(
                          backgroundColor: Colors.pink.shade300,
                          radius: 30,
                          backgroundImage: NetworkImage(
                            'https://i.pinimg.com/736x/56/29/2b/56292beb9bd3a61db68587099fc4f8ec.jpg',
                            // height: 30,
                          )),
                    )
                  ],
                ),
                CircleAvatar(
                    backgroundColor: Colors.pink.shade300,
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/736x/98/41/e1/9841e124da56701e164536f7c2bc3ac3.jpg',
                      // height: 30,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0, right: 5),
              child: CircleAvatar(
                  backgroundColor: Colors.pink.shade300,
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1342247162/photo/handsome-middle-eastern-guy-businessman-posing-next-to-office-center.jpg?b=1&s=170667a&w=0&k=20&c=aFFf4WomNrkbLljIvafbk2ukDK4chb34HGjbqb2sQGs=',
                    // height: 30,
                  )),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 100.0, left: 5),
          child: CircleAvatar(
              backgroundColor: Colors.pink.shade300,
              radius: 30,
              backgroundImage: NetworkImage(
                'https://png.pngitem.com/pimgs/s/193-1933925_transparent-cody-christian-png-theo-teen-wolf-teenage.png',
                // height: 30,
              )),
        )
      ],
    );
  }
}
